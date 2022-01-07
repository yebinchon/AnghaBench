
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int compression_level; char block_maximum_size; int block_independence; int block_checksum; int stream_checksum; } ;
struct archive_write_filter {int archive; scalar_t__ data; } ;


 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_set_error (int ,int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
archive_filter_lz4_options(struct archive_write_filter *f,
    const char *key, const char *value)
{
 struct private_data *data = (struct private_data *)f->data;

 if (strcmp(key, "compression-level") == 0) {
  int val;
  if (value == ((void*)0) || !((val = value[0] - '0') >= 1 && val <= 9) ||
      value[1] != '\0')
   return (ARCHIVE_WARN);


  if(val >= 3)
  {
   archive_set_error(f->archive, ARCHIVE_ERRNO_PROGRAMMER,
    "High compression not included in this build");
   return (ARCHIVE_FATAL);
  }

  data->compression_level = val;
  return (ARCHIVE_OK);
 }
 if (strcmp(key, "stream-checksum") == 0) {
  data->stream_checksum = value != ((void*)0);
  return (ARCHIVE_OK);
 }
 if (strcmp(key, "block-checksum") == 0) {
  data->block_checksum = value != ((void*)0);
  return (ARCHIVE_OK);
 }
 if (strcmp(key, "block-size") == 0) {
  if (value == ((void*)0) || !(value[0] >= '4' && value[0] <= '7') ||
      value[1] != '\0')
   return (ARCHIVE_WARN);
  data->block_maximum_size = value[0] - '0';
  return (ARCHIVE_OK);
 }
 if (strcmp(key, "block-dependence") == 0) {
  data->block_independence = value == ((void*)0);
  return (ARCHIVE_OK);
 }




 return (ARCHIVE_WARN);
}
