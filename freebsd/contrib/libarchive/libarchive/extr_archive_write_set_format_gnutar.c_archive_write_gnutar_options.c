
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnutar {int * opt_sconv; } ;
struct archive_write {int archive; int format_name; scalar_t__ format_data; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_set_error (int *,int ,char*,int ) ;
 int * archive_string_conversion_to_charset (int *,char const*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
archive_write_gnutar_options(struct archive_write *a, const char *key,
    const char *val)
{
 struct gnutar *gnutar = (struct gnutar *)a->format_data;
 int ret = ARCHIVE_FAILED;

 if (strcmp(key, "hdrcharset") == 0) {
  if (val == ((void*)0) || val[0] == 0)
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "%s: hdrcharset option needs a character-set name",
       a->format_name);
  else {
   gnutar->opt_sconv = archive_string_conversion_to_charset(
       &a->archive, val, 0);
   if (gnutar->opt_sconv != ((void*)0))
    ret = ARCHIVE_OK;
   else
    ret = ARCHIVE_FATAL;
  }
  return (ret);
 }




 return (ARCHIVE_WARN);
}
