
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pax {int opt_binary; int * sconv_utf8; } ;
struct archive_write {int archive; scalar_t__ format_data; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_set_error (int *,int ,char*) ;
 int * archive_string_conversion_to_charset (int *,char*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
archive_write_pax_options(struct archive_write *a, const char *key,
    const char *val)
{
 struct pax *pax = (struct pax *)a->format_data;
 int ret = ARCHIVE_FAILED;

 if (strcmp(key, "hdrcharset") == 0) {




  if (val == ((void*)0) || val[0] == 0)
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "pax: hdrcharset option needs a character-set name");
  else if (strcmp(val, "BINARY") == 0 ||
      strcmp(val, "binary") == 0) {




   pax->opt_binary = 1;
   ret = ARCHIVE_OK;
  } else if (strcmp(val, "UTF-8") == 0) {







   pax->sconv_utf8 = archive_string_conversion_to_charset(
       &(a->archive), "UTF-8", 0);
   if (pax->sconv_utf8 == ((void*)0))
    ret = ARCHIVE_FATAL;
   else
    ret = ARCHIVE_OK;
  } else
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "pax: invalid charset name");
  return (ret);
 }




 return (ARCHIVE_WARN);
}
