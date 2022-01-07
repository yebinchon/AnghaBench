
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {char compression_level; int timestamp; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
archive_compressor_gzip_options(struct archive_write_filter *f, const char *key,
    const char *value)
{
 struct private_data *data = (struct private_data *)f->data;

 if (strcmp(key, "compression-level") == 0) {
  if (value == ((void*)0) || !(value[0] >= '0' && value[0] <= '9') ||
      value[1] != '\0')
   return (ARCHIVE_WARN);
  data->compression_level = value[0] - '0';
  return (ARCHIVE_OK);
 }
 if (strcmp(key, "timestamp") == 0) {
  data->timestamp = (value == ((void*)0))?-1:1;
  return (ARCHIVE_OK);
 }




 return (ARCHIVE_WARN);
}
