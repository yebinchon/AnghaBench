
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read_disk {int flags; int archive; TYPE_1__* tree; } ;
struct archive {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_OK ;
 int ARCHIVE_READDISK_RESTORE_ATIME ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 int ARCHIVE_WARN ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;
 int needsRestoreTimes ;

int
archive_read_disk_set_atime_restored(struct archive *_a)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_ANY, "archive_read_disk_restore_atime");







 archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
     "Cannot restore access time on this system");
 a->flags &= ~ARCHIVE_READDISK_RESTORE_ATIME;
 return (ARCHIVE_WARN);

}
