
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_disk {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_CLOSED ;
 int ARCHIVE_STATE_NEW ;
 int _archive_read_disk_open (struct archive*,char const*) ;
 int archive_check_magic (struct archive*,int ,int,char*) ;
 int archive_clear_error (int *) ;

int
archive_read_disk_open(struct archive *_a, const char *pathname)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;

 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_NEW | ARCHIVE_STATE_CLOSED,
     "archive_read_disk_open");
 archive_clear_error(&a->archive);

 return (_archive_read_disk_open(_a, pathname));
}
