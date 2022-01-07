
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct archive_read_disk {int tree; TYPE_1__ archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 int ARCHIVE_STATE_CLOSED ;
 int ARCHIVE_STATE_FATAL ;
 int archive_check_magic (struct archive*,int ,int,char*) ;
 int tree_close (int ) ;

__attribute__((used)) static int
_archive_read_close(struct archive *_a)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;

 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_ANY | ARCHIVE_STATE_FATAL, "archive_read_close");

 if (a->archive.state != ARCHIVE_STATE_FATAL)
  a->archive.state = ARCHIVE_STATE_CLOSED;

 tree_close(a->tree);

 return (ARCHIVE_OK);
}
