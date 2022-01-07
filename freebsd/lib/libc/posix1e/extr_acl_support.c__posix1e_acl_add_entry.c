
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct acl_entry {int ae_id; int ae_tag; int ae_perm; } ;
struct acl {size_t acl_cnt; struct acl_entry* acl_entry; } ;
typedef int acl_tag_t ;
typedef TYPE_1__* acl_t ;
typedef int acl_perm_t ;
struct TYPE_3__ {struct acl ats_acl; } ;


 size_t ACL_MAX_ENTRIES ;
 int ENOMEM ;
 int errno ;

int
_posix1e_acl_add_entry(acl_t acl, acl_tag_t tag, uid_t id, acl_perm_t perm)
{
 struct acl *acl_int;
 struct acl_entry *e;

 acl_int = &acl->ats_acl;

 if (acl_int->acl_cnt >= ACL_MAX_ENTRIES) {
  errno = ENOMEM;
  return (-1);
 }

 e = &(acl_int->acl_entry[acl_int->acl_cnt]);
 e->ae_perm = perm;
 e->ae_tag = tag;
 e->ae_id = id;
 acl_int->acl_cnt++;

 return (0);
}
