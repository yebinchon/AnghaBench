
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_lrzip {char compression_level; int compression; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int bzip2 ;
 int gzip ;
 int lzo ;
 int none ;
 scalar_t__ strcmp (char const*,char*) ;
 int zpaq ;

__attribute__((used)) static int
archive_write_lrzip_options(struct archive_write_filter *f, const char *key,
    const char *value)
{
 struct write_lrzip *data = (struct write_lrzip *)f->data;

 if (strcmp(key, "compression") == 0) {
  if (value == ((void*)0))
   return (ARCHIVE_WARN);
  else if (strcmp(value, "bzip2") == 0)
   data->compression = bzip2;
  else if (strcmp(value, "gzip") == 0)
   data->compression = gzip;
  else if (strcmp(value, "lzo") == 0)
   data->compression = lzo;
  else if (strcmp(value, "none") == 0)
   data->compression = none;
  else if (strcmp(value, "zpaq") == 0)
   data->compression = zpaq;
  else
   return (ARCHIVE_WARN);
  return (ARCHIVE_OK);
 } else if (strcmp(key, "compression-level") == 0) {
  if (value == ((void*)0) || !(value[0] >= '1' && value[0] <= '9') ||
      value[1] != '\0')
   return (ARCHIVE_WARN);
  data->compression_level = value[0] - '0';
  return (ARCHIVE_OK);
 }



 return (ARCHIVE_WARN);
}
