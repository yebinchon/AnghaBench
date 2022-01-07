
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int flags; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;

int
archive_write_disk_set_options(struct archive *_a, int flags)
{
 struct archive_write_disk *a = (struct archive_write_disk *)_a;

 a->flags = flags;
 return (ARCHIVE_OK);
}
