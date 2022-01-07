
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct v7tar {int init_default_conversion; int entry_padding; scalar_t__ entry_bytes_remaining; struct archive_string_conv* opt_sconv; struct archive_string_conv* sconv_default; } ;
struct archive_wstring {int s; } ;
struct archive_write {int archive; scalar_t__ format_data; } ;
struct archive_string_conv {int dummy; } ;
struct archive_string {int s; } ;
struct archive_entry {int dummy; } ;
typedef int int64_t ;


 scalar_t__ AE_IFDIR ;
 scalar_t__ AE_IFREG ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_WARN ;
 int ENOMEM ;
 int __archive_write_output (struct archive_write*,char*,int) ;
 struct archive_entry* __la_win_entry_in_posix_pathseparator (struct archive_entry*) ;
 int archive_entry_copy_pathname (struct archive_entry*,int ) ;
 int archive_entry_copy_pathname_w (struct archive_entry*,int ) ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int * archive_entry_hardlink (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 int* archive_entry_pathname_w (struct archive_entry*) ;
 int archive_entry_set_size (struct archive_entry*,int ) ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 int * archive_entry_symlink (struct archive_entry*) ;
 int archive_set_error (int *,int ,char*) ;
 int archive_strappend_char (struct archive_wstring*,char) ;
 struct archive_string_conv* archive_string_default_conversion_for_write (int *) ;
 int * archive_string_ensure (struct archive_wstring*,size_t) ;
 int archive_string_free (struct archive_wstring*) ;
 int archive_string_init (struct archive_wstring*) ;
 int archive_strncpy (struct archive_wstring*,char const*,size_t) ;
 int archive_wstrappend_wchar (struct archive_wstring*,int) ;
 int * archive_wstring_ensure (struct archive_wstring*,size_t) ;
 int archive_wstring_free (struct archive_wstring*) ;
 int archive_wstrncpy (struct archive_wstring*,int const*,size_t) ;
 int format_header_v7tar (struct archive_write*,char*,struct archive_entry*,int,struct archive_string_conv*) ;
 int strlen (char const*) ;
 int wcslen (int const*) ;

__attribute__((used)) static int
archive_write_v7tar_header(struct archive_write *a, struct archive_entry *entry)
{
 char buff[512];
 int ret, ret2;
 struct v7tar *v7tar;
 struct archive_entry *entry_main;
 struct archive_string_conv *sconv;

 v7tar = (struct v7tar *)a->format_data;


 if (v7tar->opt_sconv == ((void*)0)) {
  if (!v7tar->init_default_conversion) {
   v7tar->sconv_default =
       archive_string_default_conversion_for_write(
    &(a->archive));
   v7tar->init_default_conversion = 1;
  }
  sconv = v7tar->sconv_default;
 } else
  sconv = v7tar->opt_sconv;


 if (archive_entry_pathname(entry) == ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Can't record entry in tar file without pathname");
  return (ARCHIVE_FAILED);
 }


 if (archive_entry_hardlink(entry) != ((void*)0) ||
     archive_entry_symlink(entry) != ((void*)0) ||
     !(archive_entry_filetype(entry) == AE_IFREG))
  archive_entry_set_size(entry, 0);

 if (AE_IFDIR == archive_entry_filetype(entry)) {
  const char *p;
  size_t path_length;
   p = archive_entry_pathname(entry);





  if (p != ((void*)0) && p[0] != '\0' && p[strlen(p) - 1] != '/') {
   struct archive_string as;

   archive_string_init(&as);
   path_length = strlen(p);
   if (archive_string_ensure(&as,
       path_length + 2) == ((void*)0)) {
    archive_set_error(&a->archive, ENOMEM,
        "Can't allocate v7tar data");
    archive_string_free(&as);
    return(ARCHIVE_FATAL);
   }
   archive_strncpy(&as, p, path_length);
   archive_strappend_char(&as, '/');
   archive_entry_copy_pathname(entry, as.s);
   archive_string_free(&as);
  }
 }
 entry_main = ((void*)0);

 ret = format_header_v7tar(a, buff, entry, 1, sconv);
 if (ret < ARCHIVE_WARN) {
  archive_entry_free(entry_main);
  return (ret);
 }
 ret2 = __archive_write_output(a, buff, 512);
 if (ret2 < ARCHIVE_WARN) {
  archive_entry_free(entry_main);
  return (ret2);
 }
 if (ret2 < ret)
  ret = ret2;

 v7tar->entry_bytes_remaining = archive_entry_size(entry);
 v7tar->entry_padding = 0x1ff & (-(int64_t)v7tar->entry_bytes_remaining);
 archive_entry_free(entry_main);
 return (ret);
}
