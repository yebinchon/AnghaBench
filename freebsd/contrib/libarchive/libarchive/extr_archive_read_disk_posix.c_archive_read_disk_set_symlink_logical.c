
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_disk {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int setup_symlink_mode (struct archive_read_disk*,char,int) ;

int
archive_read_disk_set_symlink_logical(struct archive *_a)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_ANY, "archive_read_disk_set_symlink_logical");
 setup_symlink_mode(a, 'L', 1);
 return (ARCHIVE_OK);
}
