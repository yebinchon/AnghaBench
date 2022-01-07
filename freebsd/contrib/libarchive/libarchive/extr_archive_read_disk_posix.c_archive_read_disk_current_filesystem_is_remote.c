
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct archive_read_disk {TYPE_2__* tree; } ;
struct archive {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_filesystem; } ;
struct TYPE_3__ {int remote; } ;


 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_DATA ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

int
archive_read_disk_current_filesystem_is_remote(struct archive *_a)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;

 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC, ARCHIVE_STATE_DATA,
     "archive_read_disk_current_filesystem");

 return (a->tree->current_filesystem->remote);
}
