// ignore_for_file: constant_identifier_names

class SharedFile {
  /// Image or Video path or text
  /// NOTE. for iOS only the file is always copied
  String? name;
  String? size;
  String? value;

  /// Video thumbnail
  String? thumbnail;

  /// Video duration in milliseconds
  int? duration;

  /// Whether its a video or image or file
  SharedMediaType type = SharedMediaType.OTHER;

  SharedFile(
      {required this.value,
      this.name,
      this.size,
      this.thumbnail,
      this.duration,
      this.type = SharedMediaType.OTHER});

  SharedFile.fromJson(Map<String, dynamic> json)
      : value = json['value'] ?? json['path'],
        name = json['name'],
        size = json['size'],
        thumbnail = json['thumbnail'],
        duration = json['duration'],
        type = SharedMediaType.values[json['type']];

  @override
  String toString() {
    return "{ value:$value, thumbnail:$thumbnail, duration:$duration, type:$type }";
  }
}

enum SharedMediaType { TEXT, URL, IMAGE, VIDEO, FILE, OTHER }
