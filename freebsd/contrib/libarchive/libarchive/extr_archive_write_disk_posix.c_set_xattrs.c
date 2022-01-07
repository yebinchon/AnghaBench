
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int archive; int entry; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ archive_entry_xattr_count (int ) ;
 int archive_set_error (int *,int ,char*) ;

__attribute__((used)) static int
set_xattrs(struct archive_write_disk *a)
{
 static int warning_done = 0;



 if (archive_entry_xattr_count(a->entry) != 0 && !warning_done) {
  warning_done = 1;
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Cannot restore extended attributes on this system");
  return (ARCHIVE_WARN);
 }

 return (ARCHIVE_OK);
}
