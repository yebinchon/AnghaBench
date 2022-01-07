
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int archive; scalar_t__ format_data; } ;
struct _7zip {char opt_compression_level; int opt_compression; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int _7Z_BZIP2 ;
 int _7Z_COPY ;
 int _7Z_DEFLATE ;
 int _7Z_LZMA1 ;
 int _7Z_LZMA2 ;
 int _7Z_PPMD ;
 int archive_set_error (int *,int ,char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
_7z_options(struct archive_write *a, const char *key, const char *value)
{
 struct _7zip *zip;

 zip = (struct _7zip *)a->format_data;

 if (strcmp(key, "compression") == 0) {
  const char *name = ((void*)0);

  if (value == ((void*)0) || strcmp(value, "copy") == 0 ||
      strcmp(value, "COPY") == 0 ||
      strcmp(value, "store") == 0 ||
      strcmp(value, "STORE") == 0)
   zip->opt_compression = _7Z_COPY;
  else if (strcmp(value, "deflate") == 0 ||
      strcmp(value, "DEFLATE") == 0)



   name = "deflate";

  else if (strcmp(value, "bzip2") == 0 ||
      strcmp(value, "BZIP2") == 0)



   name = "bzip2";

  else if (strcmp(value, "lzma1") == 0 ||
      strcmp(value, "LZMA1") == 0)



   name = "lzma1";

  else if (strcmp(value, "lzma2") == 0 ||
      strcmp(value, "LZMA2") == 0)



   name = "lzma2";

  else if (strcmp(value, "ppmd") == 0 ||
      strcmp(value, "PPMD") == 0 ||
      strcmp(value, "PPMd") == 0)
   zip->opt_compression = _7Z_PPMD;
  else {
   archive_set_error(&(a->archive),
       ARCHIVE_ERRNO_MISC,
       "Unknown compression name: `%s'",
       value);
   return (ARCHIVE_FAILED);
  }
  if (name != ((void*)0)) {
   archive_set_error(&(a->archive),
       ARCHIVE_ERRNO_MISC,
       "`%s' compression not supported "
       "on this platform",
       name);
   return (ARCHIVE_FAILED);
  }
  return (ARCHIVE_OK);
 }
 if (strcmp(key, "compression-level") == 0) {
  if (value == ((void*)0) ||
      !(value[0] >= '0' && value[0] <= '9') ||
      value[1] != '\0') {
   archive_set_error(&(a->archive),
       ARCHIVE_ERRNO_MISC,
       "Illegal value `%s'",
       value);
   return (ARCHIVE_FAILED);
  }
  zip->opt_compression_level = value[0] - '0';
  return (ARCHIVE_OK);
 }




 return (ARCHIVE_WARN);
}
