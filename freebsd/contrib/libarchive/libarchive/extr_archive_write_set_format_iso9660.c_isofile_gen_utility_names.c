
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_10__ {char* s; size_t length; } ;
struct isofile {scalar_t__ dircnt; int entry; TYPE_2__ basename; TYPE_2__ parentdir; TYPE_2__ symlink; TYPE_2__ basename_utf16; } ;
struct TYPE_9__ {scalar_t__ joliet; } ;
struct iso9660 {int * sconv_to_utf16be; int * sconv_from_utf16be; TYPE_1__ opt; } ;
struct archive_wstring {int length; int s; } ;
struct archive_write {int archive; struct iso9660* format_data; } ;


 scalar_t__ AE_IFDIR ;
 scalar_t__ AE_IFLNK ;
 scalar_t__ ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ ENOMEM ;
 scalar_t__ archive_entry_filetype (int ) ;
 char* archive_entry_pathname (int ) ;
 scalar_t__ archive_entry_pathname_l (int ,char const**,size_t*,int *) ;
 int * archive_entry_pathname_w (int ) ;
 char* archive_entry_symlink (int ) ;
 int * archive_entry_symlink_w (int ) ;
 int archive_set_error (int *,scalar_t__,char*) ;
 int archive_strcpy (TYPE_2__*,char const*) ;
 int archive_string_append_from_wcs (TYPE_2__*,int ,int ) ;
 int * archive_string_conversion_from_charset (int *,char*,int) ;
 int * archive_string_conversion_to_charset (int *,char*,int) ;
 int archive_string_copy (TYPE_2__*,TYPE_2__*) ;
 int archive_string_empty (TYPE_2__*) ;
 int * archive_string_ensure (TYPE_2__*,size_t) ;
 int archive_string_init (struct archive_wstring*) ;
 scalar_t__ archive_strlen (TYPE_2__*) ;
 int archive_wstrcpy (struct archive_wstring*,int const*) ;
 int archive_wstring_free (struct archive_wstring*) ;
 scalar_t__ cleanup_backslash_1 (char*) ;
 int cleanup_backslash_2 (int ) ;
 scalar_t__ errno ;
 int memcpy (char*,char const*,size_t) ;
 int memmove (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
isofile_gen_utility_names(struct archive_write *a, struct isofile *file)
{
 struct iso9660 *iso9660;
 const char *pathname;
 char *p, *dirname, *slash;
 size_t len;
 int ret = ARCHIVE_OK;

 iso9660 = a->format_data;

 archive_string_empty(&(file->parentdir));
 archive_string_empty(&(file->basename));
 archive_string_empty(&(file->basename_utf16));
 archive_string_empty(&(file->symlink));

 pathname = archive_entry_pathname(file->entry);
 if (pathname == ((void*)0) || pathname[0] == '\0') {
  file->dircnt = 0;
  return (ret);
 }




 if (iso9660->opt.joliet) {
  const char *u16, *ulast;
  size_t u16len, ulen_last;

  if (iso9660->sconv_to_utf16be == ((void*)0)) {
   iso9660->sconv_to_utf16be =
       archive_string_conversion_to_charset(
    &(a->archive), "UTF-16BE", 1);
   if (iso9660->sconv_to_utf16be == ((void*)0))

    return (ARCHIVE_FATAL);
   iso9660->sconv_from_utf16be =
       archive_string_conversion_from_charset(
    &(a->archive), "UTF-16BE", 1);
   if (iso9660->sconv_from_utf16be == ((void*)0))

    return (ARCHIVE_FATAL);
  }




  if (0 > archive_entry_pathname_l(file->entry, &u16, &u16len,
      iso9660->sconv_to_utf16be)) {
   if (errno == ENOMEM) {
    archive_set_error(&a->archive, ENOMEM,
        "Can't allocate memory for UTF-16BE");
    return (ARCHIVE_FATAL);
   }
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "A filename cannot be converted to UTF-16BE;"
       "You should disable making Joliet extension");
   ret = ARCHIVE_WARN;
  }





  while (u16len >= 2) {




   if (u16[u16len-2] == 0 && u16[u16len-1] == '/')

   {
    u16len -= 2;
   } else
    break;
  }




  ulast = u16;
  u16len >>= 1;
  ulen_last = u16len;
  while (u16len > 0) {



   if (u16[0] == 0 && u16[1] == '/')

   {
    ulast = u16 + 2;
    ulen_last = u16len -1;
   }
   u16 += 2;
   u16len --;
  }
  ulen_last <<= 1;
  if (archive_string_ensure(&(file->basename_utf16),
      ulen_last) == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for UTF-16BE");
   return (ARCHIVE_FATAL);
  }




  memcpy(file->basename_utf16.s, ulast, ulen_last);
  file->basename_utf16.length = ulen_last;
 }

 archive_strcpy(&(file->parentdir), pathname);
 len = file->parentdir.length;
 p = dirname = file->parentdir.s;




 while (*p) {
  if (p[0] == '/') {
   p++;
   len--;
  } else if (p[0] != '.')
   break;
  else if (p[1] == '.' && p[2] == '/') {
   p += 3;
   len -= 3;
  } else if (p[1] == '/' || (p[1] == '.' && p[2] == '\0')) {
   p += 2;
   len -= 2;
  } else if (p[1] == '\0') {
   p++;
   len--;
  } else
   break;
 }
 if (p != dirname) {
  memmove(dirname, p, len+1);
  p = dirname;
 }



 while (len > 0) {
  size_t ll = len;

  if (len > 0 && p[len-1] == '/') {
   p[len-1] = '\0';
   len--;
  }
  if (len > 1 && p[len-2] == '/' && p[len-1] == '.') {
   p[len-2] = '\0';
   len -= 2;
  }
  if (len > 2 && p[len-3] == '/' && p[len-2] == '.' &&
      p[len-1] == '.') {
   p[len-3] = '\0';
   len -= 3;
  }
  if (ll == len)
   break;
 }
 while (*p) {
  if (p[0] == '/') {
   if (p[1] == '/')

    memmove(p, p+1, strlen(p+1) + 1);
   else if (p[1] == '.' && p[2] == '/')

    memmove(p, p+2, strlen(p+2) + 1);
   else if (p[1] == '.' && p[2] == '.' && p[3] == '/') {



    char *rp = p -1;
    while (rp >= dirname) {
     if (*rp == '/')
      break;
     --rp;
    }
    if (rp > dirname) {
     strcpy(rp, p+3);
     p = rp;
    } else {
     strcpy(dirname, p+4);
     p = dirname;
    }
   } else
    p++;
  } else
   p++;
 }
 p = dirname;
 len = strlen(p);

 if (archive_entry_filetype(file->entry) == AE_IFLNK) {

  pathname = archive_entry_symlink(file->entry);
  archive_strcpy(&(file->symlink), pathname);
 }





 slash = ((void*)0);
 file->dircnt = 0;
 for (; *p != '\0'; p++)
  if (*p == '/') {
   slash = p;
   file->dircnt++;
  }
 if (slash == ((void*)0)) {

  file->parentdir.length = len;
  archive_string_copy(&(file->basename), &(file->parentdir));
  archive_string_empty(&(file->parentdir));
  *file->parentdir.s = '\0';
  return (ret);
 }


 *slash = '\0';
 file->parentdir.length = slash - dirname;
 archive_strcpy(&(file->basename), slash + 1);
 if (archive_entry_filetype(file->entry) == AE_IFDIR)
  file->dircnt ++;
 return (ret);
}
