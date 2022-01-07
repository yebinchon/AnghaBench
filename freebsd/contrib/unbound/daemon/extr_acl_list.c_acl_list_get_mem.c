
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_list {int region; } ;


 size_t regional_get_mem (int ) ;

size_t
acl_list_get_mem(struct acl_list* acl)
{
 if(!acl) return 0;
 return sizeof(*acl) + regional_get_mem(acl->region);
}
