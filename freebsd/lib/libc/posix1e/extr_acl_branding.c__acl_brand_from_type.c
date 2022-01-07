
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_type_t ;
typedef int acl_t ;


 int ACL_BRAND_NFS4 ;
 int ACL_BRAND_POSIX ;



 int _acl_brand_as (int ,int ) ;

void
_acl_brand_from_type(acl_t acl, acl_type_t type)
{

 switch (type) {
 case 128:
  _acl_brand_as(acl, ACL_BRAND_NFS4);
  break;
 case 130:
 case 129:
  _acl_brand_as(acl, ACL_BRAND_POSIX);
  break;
 default:

  break;
 }
}
