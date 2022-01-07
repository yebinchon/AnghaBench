
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * acl_permset_t ;


 int ACL_PERM_NONE ;
 int EINVAL ;
 int errno ;

int
acl_clear_perms(acl_permset_t permset_d)
{

 if (permset_d == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 *permset_d = ACL_PERM_NONE;

 return (0);
}
