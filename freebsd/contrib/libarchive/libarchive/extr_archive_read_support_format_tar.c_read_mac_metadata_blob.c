
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct tar {int dummy; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef int int64_t ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 void* __archive_read_ahead (struct archive_read*,size_t,int *) ;
 int archive_entry_copy_mac_metadata (struct archive_entry*,void const*,size_t) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 int* archive_entry_pathname_w (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int tar_flush_unconsumed (struct archive_read*,size_t*) ;
 int tar_read_header (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ;

__attribute__((used)) static int
read_mac_metadata_blob(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h, size_t *unconsumed)
{
 int64_t size;
 const void *data;
 const char *p, *name;
 const wchar_t *wp, *wname;

 (void)h;

 wname = wp = archive_entry_pathname_w(entry);
 if (wp != ((void*)0)) {

  for (; *wp != L'\0'; ++wp) {
   if (wp[0] == '/' && wp[1] != L'\0')
    wname = wp + 1;
  }




  if (wname[0] != L'.' || wname[1] != L'_' || wname[2] == L'\0')
   return ARCHIVE_OK;
 } else {

  name = p = archive_entry_pathname(entry);
  if (p == ((void*)0))
   return (ARCHIVE_FAILED);
  for (; *p != '\0'; ++p) {
   if (p[0] == '/' && p[1] != '\0')
    name = p + 1;
  }




  if (name[0] != '.' || name[1] != '_' || name[2] == '\0')
   return ARCHIVE_OK;
 }


 size = archive_entry_size(entry);
 data = __archive_read_ahead(a, (size_t)size, ((void*)0));
 if (data == ((void*)0)) {
  *unconsumed = 0;
  return (ARCHIVE_FATAL);
 }
 archive_entry_copy_mac_metadata(entry, data, (size_t)size);
 *unconsumed = (size_t)((size + 511) & ~ 511);
 tar_flush_unconsumed(a, unconsumed);
 return (tar_read_header(a, tar, entry, unconsumed));
}
