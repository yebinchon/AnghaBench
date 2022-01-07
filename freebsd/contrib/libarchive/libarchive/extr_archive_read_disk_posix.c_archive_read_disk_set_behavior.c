
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read_disk {int flags; TYPE_1__* tree; } ;
struct archive {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_READDISK_RESTORE_ATIME ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_disk_set_atime_restored (struct archive*) ;
 int needsRestoreTimes ;

int
archive_read_disk_set_behavior(struct archive *_a, int flags)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 int r = ARCHIVE_OK;

 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_ANY, "archive_read_disk_honor_nodump");

 a->flags = flags;

 if (flags & ARCHIVE_READDISK_RESTORE_ATIME)
  r = archive_read_disk_set_atime_restored(_a);
 else {
  if (a->tree != ((void*)0))
   a->tree->flags &= ~needsRestoreTimes;
 }
 return (r);
}
