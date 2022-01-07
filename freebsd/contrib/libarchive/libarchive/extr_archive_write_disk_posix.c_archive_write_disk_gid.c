
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int lookup_gid_data; int (* lookup_gid ) (int ,char const*,int ) ;int archive; } ;
struct archive {int dummy; } ;
typedef int la_int64_t ;
typedef int int64_t ;


 int ARCHIVE_STATE_ANY ;
 int ARCHIVE_WRITE_DISK_MAGIC ;
 int archive_check_magic (int *,int ,int ,char*) ;
 int stub1 (int ,char const*,int ) ;

int64_t
archive_write_disk_gid(struct archive *_a, const char *name, la_int64_t id)
{
       struct archive_write_disk *a = (struct archive_write_disk *)_a;
       archive_check_magic(&a->archive, ARCHIVE_WRITE_DISK_MAGIC,
           ARCHIVE_STATE_ANY, "archive_write_disk_gid");
       if (a->lookup_gid)
               return (a->lookup_gid)(a->lookup_gid_data, name, id);
       return (id);
}
