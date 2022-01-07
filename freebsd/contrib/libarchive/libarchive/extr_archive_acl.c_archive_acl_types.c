
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_acl {int acl_types; } ;



int
archive_acl_types(struct archive_acl *acl)
{
 return (acl->acl_types);
}
