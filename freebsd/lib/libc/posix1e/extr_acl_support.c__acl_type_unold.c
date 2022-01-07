
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_type_t ;


 int ACL_TYPE_ACCESS ;

 int ACL_TYPE_DEFAULT ;


int
_acl_type_unold(acl_type_t type)
{

 switch (type) {
 case 129:
  return (ACL_TYPE_ACCESS);
 case 128:
  return (ACL_TYPE_DEFAULT);
 default:
  return (type);
 }
}
