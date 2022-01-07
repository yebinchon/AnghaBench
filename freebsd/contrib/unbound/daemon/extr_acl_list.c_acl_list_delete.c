
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_list {int region; } ;


 int free (struct acl_list*) ;
 int regional_destroy (int ) ;

void
acl_list_delete(struct acl_list* acl)
{
 if(!acl)
  return;
 regional_destroy(acl->region);
 free(acl);
}
