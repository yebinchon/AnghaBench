
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_acl {int dummy; } ;
struct archive {int dummy; } ;
typedef int __LA_MODE_T ;


 int ARCHIVE_OK ;

int
archive_write_disk_set_acls(struct archive *a, int fd, const char *name,
    struct archive_acl *abstract_acl, __LA_MODE_T mode)
{
 (void)a;
 (void)fd;
 (void)name;
 (void)abstract_acl;
 (void)mode;
 return (ARCHIVE_OK);
}
