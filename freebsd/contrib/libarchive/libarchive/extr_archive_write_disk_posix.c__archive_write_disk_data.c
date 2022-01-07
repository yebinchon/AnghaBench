
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int todo; int archive; } ;
struct archive {int dummy; } ;
typedef int ssize_t ;


 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_WRITE_DISK_MAGIC ;
 int TODO_HFS_COMPRESSION ;
 int archive_check_magic (int *,int ,int ,char*) ;
 int hfs_write_data_block (struct archive_write_disk*,void const*,size_t) ;
 int write_data_block (struct archive_write_disk*,void const*,size_t) ;

__attribute__((used)) static ssize_t
_archive_write_disk_data(struct archive *_a, const void *buff, size_t size)
{
 struct archive_write_disk *a = (struct archive_write_disk *)_a;

 archive_check_magic(&a->archive, ARCHIVE_WRITE_DISK_MAGIC,
     ARCHIVE_STATE_DATA, "archive_write_data");

 if (a->todo & TODO_HFS_COMPRESSION)
  return (hfs_write_data_block(a, buff, size));
 return (write_data_block(a, buff, size));
}
