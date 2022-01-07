
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct acl_entry {int ae_perm; int ae_tag; int ae_id; } ;
struct acl {int acl_cnt; struct acl_entry* acl_entry; } ;
typedef TYPE_1__* acl_t ;
struct TYPE_3__ {struct acl ats_acl; } ;






 int ACL_PERM_BITS ;


 int EINVAL ;

int
_posix1e_acl_check(acl_t acl)
{
 struct acl *acl_int;
 struct acl_entry *entry;
 uid_t highest_uid=0, highest_gid=0;
 int stage = 128;
 int i = 0;
 int count_user_obj=0, count_user=0, count_group_obj=0,
  count_group=0, count_mask=0, count_other=0;

 acl_int = &acl->ats_acl;



 while (i < acl_int->acl_cnt) {
  entry = &acl_int->acl_entry[i];

  if ((entry->ae_perm | ACL_PERM_BITS) != ACL_PERM_BITS)
   return (EINVAL);

  switch(entry->ae_tag) {
  case 128:


   if (stage > 128)
    return (EINVAL);
   stage = 129;
   count_user_obj++;
   break;

  case 129:

   if (stage > 129)
    return (EINVAL);
   stage = 129;
   if (count_user && (entry->ae_id <= highest_uid))
    return (EINVAL);
   highest_uid = entry->ae_id;
   count_user++;
   break;

  case 132:


   if (stage > 132)
    return (EINVAL);
   stage = 133;
   count_group_obj++;
   break;

  case 133:

   if (stage > 133)
    return (EINVAL);
   stage = 133;
   if (count_group && (entry->ae_id <= highest_gid))
    return (EINVAL);
   highest_gid = entry->ae_id;
   count_group++;
   break;

  case 131:

   if (stage > 131)
    return (EINVAL);
   stage = 131;
   count_mask++;
   break;

  case 130:

   if (stage > 130)
    return (EINVAL);
   stage = 130;
   count_other++;
   break;

  default:

   return (EINVAL);
  }
  i++;
 }

 if (count_user_obj != 1)
  return (EINVAL);

 if (count_group_obj != 1)
  return (EINVAL);

 if (count_mask != 0 && count_mask != 1)
  return (EINVAL);

 if (count_other != 1)
  return (EINVAL);

 return (0);
}
