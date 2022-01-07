
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * acl_t ;


 int EINVAL ;
 int _acl_brand (int *) ;
 int errno ;

int
acl_get_brand_np(acl_t acl, int *brand_p)
{

 if (acl == ((void*)0) || brand_p == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 *brand_p = _acl_brand(acl);

 return (0);
}
