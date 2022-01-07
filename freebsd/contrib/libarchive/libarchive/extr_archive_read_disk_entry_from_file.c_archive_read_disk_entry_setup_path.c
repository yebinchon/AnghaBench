
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_disk {scalar_t__ (* tree_enter_working_dir ) (int *) ;int (* open_on_current_dir ) (int *,char const*,int) ;int * tree; scalar_t__ follow_symlinks; int archive; } ;
struct archive_entry {int dummy; } ;


 scalar_t__ AE_IFLNK ;
 int ARCHIVE_ERRNO_MISC ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 char* archive_entry_sourcepath (struct archive_entry*) ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ stub1 (int *) ;
 int stub2 (int *,char const*,int) ;

const char *
archive_read_disk_entry_setup_path(struct archive_read_disk *a,
    struct archive_entry *entry, int *fd)
{
 const char *path;

 path = archive_entry_sourcepath(entry);

 if (path == ((void*)0) || (a->tree != ((void*)0) &&
     a->tree_enter_working_dir(a->tree) != 0))
  path = archive_entry_pathname(entry);
 if (path == ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
     "Couldn't determine path");
 } else if (fd != ((void*)0) && *fd < 0 && a->tree != ((void*)0) &&
     (a->follow_symlinks || archive_entry_filetype(entry) != AE_IFLNK)) {
  *fd = a->open_on_current_dir(a->tree, path,
      O_RDONLY | O_NONBLOCK);
 }
 return (path);
}
