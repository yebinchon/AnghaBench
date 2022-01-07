
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct views {int dummy; } ;
struct acl_list {int dummy; } ;
struct acl_addr {TYPE_1__* view; } ;
struct TYPE_2__ {int lock; } ;


 struct acl_addr* acl_find_or_create (struct acl_list*,char const*) ;
 int lock_rw_unlock (int *) ;
 int log_err (char*,char const*) ;
 TYPE_1__* views_find_view (struct views*,char const*,int ) ;

__attribute__((used)) static int
acl_list_view_cfg(struct acl_list* acl, const char* str, const char* str2,
 struct views* vs)
{
 struct acl_addr* node;
 if(!(node=acl_find_or_create(acl, str)))
  return 0;
 node->view = views_find_view(vs, str2, 0 );
 if(!node->view) {
  log_err("no view with name: %s", str2);
  return 0;
 }
 lock_rw_unlock(&node->view->lock);
 return 1;
}
