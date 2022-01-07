
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_list {int region; } ;


 int acl_list_delete (struct acl_list*) ;
 scalar_t__ calloc (int,int) ;
 int regional_create () ;

struct acl_list*
acl_list_create(void)
{
 struct acl_list* acl = (struct acl_list*)calloc(1,
  sizeof(struct acl_list));
 if(!acl)
  return ((void*)0);
 acl->region = regional_create();
 if(!acl->region) {
  acl_list_delete(acl);
  return ((void*)0);
 }
 return acl;
}
