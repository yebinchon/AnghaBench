
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef int gid_t ;
typedef int boolean_t ;
typedef int aclent_t ;
struct TYPE_3__ {scalar_t__ acl_type; int acl_cnt; int acl_entry_size; void* acl_aclp; } ;
typedef TYPE_1__ acl_t ;
typedef int ace_t ;


 scalar_t__ ACE_T ;
 scalar_t__ ACLENT_T ;
 int EINVAL ;
 int ENOTSUP ;
 int _ACL_ACE_ENABLED ;
 int _ACL_ACLENT_ENABLED ;
 int cacl_free (void*,int) ;
 int convert_ace_to_aent (void*,int,int ,int ,int ,int **,int*) ;
 int convert_aent_to_ace (void*,int,int ,int **,int*) ;
 int errno ;

int
acl_translate(acl_t *aclp, int target_flavor, boolean_t isdir, uid_t owner,
    gid_t group)
{
 int aclcnt;
 void *acldata;
 int error;




 if ((target_flavor == _ACL_ACE_ENABLED && aclp->acl_type == ACE_T) ||
     (target_flavor == _ACL_ACLENT_ENABLED &&
     aclp->acl_type == ACLENT_T))
  return (0);

 if (target_flavor == -1) {
  error = EINVAL;
  goto out;
 }

 if (target_flavor == _ACL_ACE_ENABLED &&
     aclp->acl_type == ACLENT_T) {
  error = convert_aent_to_ace(aclp->acl_aclp,
      aclp->acl_cnt, isdir, (ace_t **)&acldata, &aclcnt);
  if (error)
   goto out;

 } else if (target_flavor == _ACL_ACLENT_ENABLED &&
     aclp->acl_type == ACE_T) {
  error = convert_ace_to_aent(aclp->acl_aclp, aclp->acl_cnt,
      isdir, owner, group, (aclent_t **)&acldata, &aclcnt);
  if (error)
   goto out;
 } else {
  error = ENOTSUP;
  goto out;
 }




 cacl_free(aclp->acl_aclp, aclp->acl_cnt * aclp->acl_entry_size);
 aclp->acl_aclp = acldata;
 aclp->acl_cnt = aclcnt;
 if (target_flavor == _ACL_ACE_ENABLED) {
  aclp->acl_type = ACE_T;
  aclp->acl_entry_size = sizeof (ace_t);
 } else {
  aclp->acl_type = ACLENT_T;
  aclp->acl_entry_size = sizeof (aclent_t);
 }
 return (0);

out:


 errno = error;
 return (-1);



}
