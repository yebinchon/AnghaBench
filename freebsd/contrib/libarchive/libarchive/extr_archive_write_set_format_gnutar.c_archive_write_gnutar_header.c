
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct gnutar {int init_default_conversion; char* pathname; int pathname_length; char* linkname; int linkname_length; int entry_padding; scalar_t__ entry_bytes_remaining; int gname_length; int gname; int uname_length; int uname; struct archive_string_conv* opt_sconv; struct archive_string_conv* sconv_default; } ;
struct archive_wstring {int s; } ;
struct archive_write {int archive; scalar_t__ format_data; } ;
struct archive_string_conv {int dummy; } ;
struct archive_string {int s; } ;
struct archive_entry {int dummy; } ;
typedef int ssize_t ;
typedef int int64_t ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ ENOMEM ;
 int GNUTAR_linkname_size ;
 int GNUTAR_name_size ;
 int __archive_write_nulls (struct archive_write*,int) ;
 int __archive_write_output (struct archive_write*,char const*,int) ;
 struct archive_entry* __la_win_entry_in_posix_pathseparator (struct archive_entry*) ;
 int archive_entry_copy_pathname (struct archive_entry*,int ) ;
 int archive_entry_copy_pathname_w (struct archive_entry*,int ) ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_gname (struct archive_entry*) ;
 int archive_entry_gname_l (struct archive_entry*,int *,int *,struct archive_string_conv*) ;
 int * archive_entry_hardlink (struct archive_entry*) ;
 int archive_entry_hardlink_l (struct archive_entry*,char**,int*,struct archive_string_conv*) ;
 scalar_t__ archive_entry_mode (struct archive_entry*) ;
 struct archive_entry* archive_entry_new2 (int *) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_pathname_l (struct archive_entry*,char**,int*,struct archive_string_conv*) ;
 int* archive_entry_pathname_w (struct archive_entry*) ;
 int archive_entry_set_gname (struct archive_entry*,char*) ;
 int archive_entry_set_pathname (struct archive_entry*,char*) ;
 int archive_entry_set_size (struct archive_entry*,size_t) ;
 int archive_entry_set_uname (struct archive_entry*,char*) ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 int * archive_entry_symlink (struct archive_entry*) ;
 int archive_entry_symlink_l (struct archive_entry*,char**,int*,struct archive_string_conv*) ;
 int archive_entry_uname (struct archive_entry*) ;
 int archive_entry_uname_l (struct archive_entry*,int *,int *,struct archive_string_conv*) ;
 int archive_format_gnutar_header (struct archive_write*,char*,struct archive_entry*,int) ;
 int archive_set_error (int *,scalar_t__,char*,...) ;
 int archive_strappend_char (struct archive_wstring*,char) ;
 int archive_string_conversion_charset_name (struct archive_string_conv*) ;
 struct archive_string_conv* archive_string_default_conversion_for_write (int *) ;
 int * archive_string_ensure (struct archive_wstring*,size_t) ;
 int archive_string_free (struct archive_wstring*) ;
 int archive_string_init (struct archive_wstring*) ;
 int archive_strncpy (struct archive_wstring*,char const*,size_t) ;
 int archive_wstrappend_wchar (struct archive_wstring*,int) ;
 int * archive_wstring_ensure (struct archive_wstring*,size_t) ;
 int archive_wstring_free (struct archive_wstring*) ;
 int archive_wstrncpy (struct archive_wstring*,int const*,size_t) ;
 scalar_t__ errno ;
 int strlen (char const*) ;
 int wcslen (int const*) ;

__attribute__((used)) static int
archive_write_gnutar_header(struct archive_write *a,
     struct archive_entry *entry)
{
 char buff[512];
 int r, ret, ret2 = ARCHIVE_OK;
 int tartype;
 struct gnutar *gnutar;
 struct archive_string_conv *sconv;
 struct archive_entry *entry_main;

 gnutar = (struct gnutar *)a->format_data;


 if (gnutar->opt_sconv == ((void*)0)) {
  if (!gnutar->init_default_conversion) {
   gnutar->sconv_default =
       archive_string_default_conversion_for_write(
    &(a->archive));
   gnutar->init_default_conversion = 1;
  }
  sconv = gnutar->sconv_default;
 } else
  sconv = gnutar->opt_sconv;


 if (archive_entry_hardlink(entry) != ((void*)0) ||
     archive_entry_symlink(entry) != ((void*)0) ||
     !(archive_entry_filetype(entry) == 129))
  archive_entry_set_size(entry, 0);

 if (132 == archive_entry_filetype(entry)) {
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
        "Can't allocate ustar data");
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

 r = archive_entry_pathname_l(entry, &(gnutar->pathname),
     &(gnutar->pathname_length), sconv);
 if (r != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Pathame");
   ret = ARCHIVE_FATAL;
   goto exit_write_header;
  }
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't translate pathname '%s' to %s",
      archive_entry_pathname(entry),
      archive_string_conversion_charset_name(sconv));
  ret2 = ARCHIVE_WARN;
 }
 r = archive_entry_uname_l(entry, &(gnutar->uname),
     &(gnutar->uname_length), sconv);
 if (r != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Uname");
   ret = ARCHIVE_FATAL;
   goto exit_write_header;
  }
  archive_set_error(&a->archive,
      ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't translate uname '%s' to %s",
      archive_entry_uname(entry),
      archive_string_conversion_charset_name(sconv));
  ret2 = ARCHIVE_WARN;
 }
 r = archive_entry_gname_l(entry, &(gnutar->gname),
     &(gnutar->gname_length), sconv);
 if (r != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Gname");
   ret = ARCHIVE_FATAL;
   goto exit_write_header;
  }
  archive_set_error(&a->archive,
      ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't translate gname '%s' to %s",
      archive_entry_gname(entry),
      archive_string_conversion_charset_name(sconv));
  ret2 = ARCHIVE_WARN;
 }


 r = archive_entry_hardlink_l(entry, &(gnutar->linkname),
     &(gnutar->linkname_length), sconv);
 if (r != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Linkname");
   ret = ARCHIVE_FATAL;
   goto exit_write_header;
  }
  archive_set_error(&a->archive,
      ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't translate linkname '%s' to %s",
      archive_entry_hardlink(entry),
      archive_string_conversion_charset_name(sconv));
  ret2 = ARCHIVE_WARN;
 }
 if (gnutar->linkname_length == 0) {
  r = archive_entry_symlink_l(entry, &(gnutar->linkname),
      &(gnutar->linkname_length), sconv);
  if (r != 0) {
   if (errno == ENOMEM) {
    archive_set_error(&a->archive, ENOMEM,
        "Can't allocate memory for Linkname");
    ret = ARCHIVE_FATAL;
    goto exit_write_header;
   }
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Can't translate linkname '%s' to %s",
       archive_entry_hardlink(entry),
       archive_string_conversion_charset_name(sconv));
   ret2 = ARCHIVE_WARN;
  }
 }
 if (gnutar->linkname_length > GNUTAR_linkname_size) {
  size_t length = gnutar->linkname_length + 1;
  struct archive_entry *temp = archive_entry_new2(&a->archive);



  archive_entry_set_uname(temp, "root");
  archive_entry_set_gname(temp, "wheel");

  archive_entry_set_pathname(temp, "././@LongLink");
  archive_entry_set_size(temp, length);
  ret = archive_format_gnutar_header(a, buff, temp, 'K');
  archive_entry_free(temp);
  if (ret < ARCHIVE_WARN)
   goto exit_write_header;
  ret = __archive_write_output(a, buff, 512);
  if (ret < ARCHIVE_WARN)
   goto exit_write_header;

  ret = __archive_write_output(a, gnutar->linkname, length);
  if (ret < ARCHIVE_WARN)
   goto exit_write_header;

  ret = __archive_write_nulls(a, 0x1ff & (-(ssize_t)length));
  if (ret < ARCHIVE_WARN)
   goto exit_write_header;
 }


 if (gnutar->pathname_length > GNUTAR_name_size) {
  const char *pathname = gnutar->pathname;
  size_t length = gnutar->pathname_length + 1;
  struct archive_entry *temp = archive_entry_new2(&a->archive);



  archive_entry_set_uname(temp, "root");
  archive_entry_set_gname(temp, "wheel");

  archive_entry_set_pathname(temp, "././@LongLink");
  archive_entry_set_size(temp, length);
  ret = archive_format_gnutar_header(a, buff, temp, 'L');
  archive_entry_free(temp);
  if (ret < ARCHIVE_WARN)
   goto exit_write_header;
  ret = __archive_write_output(a, buff, 512);
  if(ret < ARCHIVE_WARN)
   goto exit_write_header;

  ret = __archive_write_output(a, pathname, length);
  if(ret < ARCHIVE_WARN)
   goto exit_write_header;

  ret = __archive_write_nulls(a, 0x1ff & (-(ssize_t)length));
  if (ret < ARCHIVE_WARN)
   goto exit_write_header;
 }

 if (archive_entry_hardlink(entry) != ((void*)0)) {
  tartype = '1';
 } else
  switch (archive_entry_filetype(entry)) {
  case 129: tartype = '0' ; break;
  case 130: tartype = '2' ; break;
  case 133: tartype = '3' ; break;
  case 134: tartype = '4' ; break;
  case 132: tartype = '5' ; break;
  case 131: tartype = '6' ; break;
  case 128:
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "tar format cannot archive socket");
   ret = ARCHIVE_FAILED;
   goto exit_write_header;
  default:
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "tar format cannot archive this (mode=0%lo)",
       (unsigned long)archive_entry_mode(entry));
   ret = ARCHIVE_FAILED;
   goto exit_write_header;
  }

 ret = archive_format_gnutar_header(a, buff, entry, tartype);
 if (ret < ARCHIVE_WARN)
  goto exit_write_header;
 if (ret2 < ret)
  ret = ret2;
 ret2 = __archive_write_output(a, buff, 512);
 if (ret2 < ARCHIVE_WARN) {
  ret = ret2;
  goto exit_write_header;
 }
 if (ret2 < ret)
  ret = ret2;

 gnutar->entry_bytes_remaining = archive_entry_size(entry);
 gnutar->entry_padding = 0x1ff & (-(int64_t)gnutar->entry_bytes_remaining);
exit_write_header:
 archive_entry_free(entry_main);
 return (ret);
}
