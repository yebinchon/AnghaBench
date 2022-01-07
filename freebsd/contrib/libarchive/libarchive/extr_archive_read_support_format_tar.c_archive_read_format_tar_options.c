
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tar {int compat_2x; int init_default_conversion; int process_mac_extensions; int read_concatenated_archives; int * opt_sconv; } ;
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
archive_read_format_tar_options(struct archive_read *a,
    const char *key, const char *val)
{
 struct tar *tar;
 int ret = ARCHIVE_FAILED;

 tar = (struct tar *)(a->format->data);
 if (strcmp(key, "compat-2x") == 0) {

  tar->compat_2x = (val != ((void*)0) && val[0] != 0);
  tar->init_default_conversion = tar->compat_2x;
  return (ARCHIVE_OK);
 } else if (strcmp(key, "hdrcharset") == 0) {
  if (val == ((void*)0) || val[0] == 0)
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "tar: hdrcharset option needs a character-set name");
  else {
   tar->opt_sconv =
       archive_string_conversion_from_charset(
    &a->archive, val, 0);
   if (tar->opt_sconv != ((void*)0))
    ret = ARCHIVE_OK;
   else
    ret = ARCHIVE_FATAL;
  }
  return (ret);
 } else if (strcmp(key, "mac-ext") == 0) {
  tar->process_mac_extensions = (val != ((void*)0) && val[0] != 0);
  return (ARCHIVE_OK);
 } else if (strcmp(key, "read_concatenated_archives") == 0) {
  tar->read_concatenated_archives = (val != ((void*)0) && val[0] != 0);
  return (ARCHIVE_OK);
 }




 return (ARCHIVE_WARN);
}
