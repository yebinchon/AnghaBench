
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpio {int init_default_conversion; int * opt_sconv; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_set_error (int *,int ,char*) ;
 int * archive_string_conversion_from_charset (int *,char const*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
archive_read_format_cpio_options(struct archive_read *a,
    const char *key, const char *val)
{
 struct cpio *cpio;
 int ret = ARCHIVE_FAILED;

 cpio = (struct cpio *)(a->format->data);
 if (strcmp(key, "compat-2x") == 0) {

  cpio->init_default_conversion = (val != ((void*)0))?1:0;
  return (ARCHIVE_OK);
 } else if (strcmp(key, "hdrcharset") == 0) {
  if (val == ((void*)0) || val[0] == 0)
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "cpio: hdrcharset option needs a character-set name");
  else {
   cpio->opt_sconv =
       archive_string_conversion_from_charset(
    &a->archive, val, 0);
   if (cpio->opt_sconv != ((void*)0))
    ret = ARCHIVE_OK;
   else
    ret = ARCHIVE_FATAL;
  }
  return (ret);
 }




 return (ARCHIVE_WARN);
}
