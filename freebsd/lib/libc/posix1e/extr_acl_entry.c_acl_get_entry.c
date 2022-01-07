
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct acl {int * acl_entry; int acl_cnt; } ;
typedef TYPE_1__* acl_t ;
typedef int * acl_entry_t ;
struct TYPE_3__ {int ats_cur_entry; struct acl ats_acl; } ;




 int EINVAL ;
 int errno ;

int
acl_get_entry(acl_t acl, int entry_id, acl_entry_t *entry_p)
{
 struct acl *acl_int;

 if (acl == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 acl_int = &acl->ats_acl;

 switch(entry_id) {
 case 129:
  acl->ats_cur_entry = 0;

 case 128:
  if (acl->ats_cur_entry >= acl->ats_acl.acl_cnt)
   return 0;
  *entry_p = &acl_int->acl_entry[acl->ats_cur_entry++];
  return (1);
 }

 errno = EINVAL;
 return (-1);
}
