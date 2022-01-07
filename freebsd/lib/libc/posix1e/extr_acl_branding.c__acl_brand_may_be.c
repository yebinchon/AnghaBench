
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_t ;


 int ACL_BRAND_UNKNOWN ;
 int _acl_brand (int const) ;

int
_acl_brand_may_be(const acl_t acl, int brand)
{

 if (_acl_brand(acl) == ACL_BRAND_UNKNOWN)
  return (1);

 if (_acl_brand(acl) == brand)
  return (1);

 return (0);
}
