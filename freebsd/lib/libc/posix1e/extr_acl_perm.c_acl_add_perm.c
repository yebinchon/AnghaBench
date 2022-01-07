
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * acl_permset_t ;
typedef int acl_perm_t ;


 int EINVAL ;
 scalar_t__ _perm_is_invalid (int ) ;
 int errno ;

int
acl_add_perm(acl_permset_t permset_d, acl_perm_t perm)
{

 if (permset_d == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (_perm_is_invalid(perm))
  return (-1);

 *permset_d |= perm;

 return (0);
}
