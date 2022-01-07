
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * acl_t ;


 int ACL_BRAND_POSIX ;
 int EINVAL ;
 int _acl_brand_may_be (int *,int ) ;
 int _posix1e_acl_check (int *) ;
 int _posix1e_acl_sort (int *) ;
 int errno ;

int
acl_valid(acl_t acl)
{
 int error;

 if (acl == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 if (!_acl_brand_may_be(acl, ACL_BRAND_POSIX)) {
  errno = EINVAL;
  return (-1);
 }
 _posix1e_acl_sort(acl);
 error = _posix1e_acl_check(acl);
 if (error) {
  errno = error;
  return (-1);
 } else {
  return (0);
 }
}
