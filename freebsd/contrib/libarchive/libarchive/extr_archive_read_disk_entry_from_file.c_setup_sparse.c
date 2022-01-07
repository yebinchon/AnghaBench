
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_disk {int dummy; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
setup_sparse(struct archive_read_disk *a,
    struct archive_entry *entry, int *fd)
{
 (void)a;
 (void)entry;
 (void)fd;
 return (ARCHIVE_OK);
}
