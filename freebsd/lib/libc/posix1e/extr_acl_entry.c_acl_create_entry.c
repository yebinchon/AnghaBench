
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acl {scalar_t__ acl_cnt; TYPE_2__* acl_entry; } ;
typedef TYPE_1__* acl_t ;
typedef TYPE_2__* acl_entry_t ;
struct TYPE_6__ {scalar_t__ ae_flags; scalar_t__ ae_entry_type; int ae_perm; int ae_id; int ae_tag; } ;
struct TYPE_5__ {scalar_t__ ats_cur_entry; struct acl ats_acl; } ;


 scalar_t__ ACL_MAX_ENTRIES ;
 int ACL_PERM_NONE ;
 int ACL_UNDEFINED_ID ;
 int ACL_UNDEFINED_TAG ;
 int EINVAL ;
 int errno ;

int
acl_create_entry(acl_t *acl_p, acl_entry_t *entry_p)
{
 struct acl *acl_int;

 if (acl_p == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 acl_int = &(*acl_p)->ats_acl;





 if (acl_int->acl_cnt + 1 >= ACL_MAX_ENTRIES) {
  errno = EINVAL;
  return (-1);
 }

 *entry_p = &acl_int->acl_entry[acl_int->acl_cnt++];

 (**entry_p).ae_tag = ACL_UNDEFINED_TAG;
 (**entry_p).ae_id = ACL_UNDEFINED_ID;
 (**entry_p).ae_perm = ACL_PERM_NONE;
 (**entry_p).ae_entry_type = 0;
 (**entry_p).ae_flags = 0;

 (*acl_p)->ats_cur_entry = 0;

 return (0);
}
