
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acl_type_t ;
typedef int acl_t ;


 scalar_t__ ACL_BRAND_POSIX ;
 scalar_t__ ACL_TYPE_ACCESS ;
 scalar_t__ ACL_TYPE_DEFAULT ;
 scalar_t__ _acl_brand (int ) ;

int
_posix1e_acl(acl_t acl, acl_type_t type)
{

 if (_acl_brand(acl) != ACL_BRAND_POSIX)
  return (0);

 return ((type == ACL_TYPE_ACCESS) || (type == ACL_TYPE_DEFAULT));
}
