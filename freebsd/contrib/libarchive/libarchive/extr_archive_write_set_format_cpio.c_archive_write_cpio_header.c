
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int archive; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ENOMEM ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 scalar_t__ archive_entry_pathname_l (struct archive_entry*,char const**,size_t*,int ) ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 int archive_entry_size_is_set (struct archive_entry*) ;
 int archive_set_error (int *,int,char*) ;
 int errno ;
 int get_sconv (struct archive_write*) ;
 int write_header (struct archive_write*,struct archive_entry*) ;

__attribute__((used)) static int
archive_write_cpio_header(struct archive_write *a, struct archive_entry *entry)
{
 const char *path;
 size_t len;

 if (archive_entry_filetype(entry) == 0) {
  archive_set_error(&a->archive, -1, "Filetype required");
  return (ARCHIVE_FAILED);
 }

 if (archive_entry_pathname_l(entry, &path, &len, get_sconv(a)) != 0
     && errno == ENOMEM) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory for Pathname");
  return (ARCHIVE_FATAL);
 }
 if (len == 0 || path == ((void*)0) || path[0] == '\0') {
  archive_set_error(&a->archive, -1, "Pathname required");
  return (ARCHIVE_FAILED);
 }

 if (!archive_entry_size_is_set(entry) || archive_entry_size(entry) < 0) {
  archive_set_error(&a->archive, -1, "Size required");
  return (ARCHIVE_FAILED);
 }
 return write_header(a, entry);
}
