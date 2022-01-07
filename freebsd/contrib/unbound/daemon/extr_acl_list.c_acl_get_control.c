
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_addr {int control; } ;
typedef enum acl_access { ____Placeholder_acl_access } acl_access ;


 int acl_deny ;

enum acl_access
acl_get_control(struct acl_addr* acl)
{
 if(acl) return acl->control;
 return acl_deny;
}
