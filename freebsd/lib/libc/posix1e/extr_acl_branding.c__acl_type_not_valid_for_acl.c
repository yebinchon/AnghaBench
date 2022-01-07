
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_type_t ;
typedef int acl_t ;





 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int ACL_TYPE_NFS4 ;
 int _acl_brand (int const) ;

int
_acl_type_not_valid_for_acl(const acl_t acl, acl_type_t type)
{

 switch (_acl_brand(acl)) {
 case 130:
  if (type == ACL_TYPE_NFS4)
   return (0);
  break;

 case 129:
  if (type == ACL_TYPE_ACCESS || type == ACL_TYPE_DEFAULT)
   return (0);
  break;

 case 128:
  return (0);
 }

 return (-1);
}
