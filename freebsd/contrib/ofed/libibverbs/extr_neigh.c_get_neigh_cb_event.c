
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_neigh {int dummy; } ;
struct nl_object {int dummy; } ;
struct get_neigh_handler {int * found_ll_addr; scalar_t__ filter_neigh; } ;


 int * nl_addr_clone (int *) ;
 scalar_t__ nl_object_match_filter (struct nl_object*,struct nl_object*) ;
 int * rtnl_neigh_get_lladdr (struct rtnl_neigh*) ;

__attribute__((used)) static void get_neigh_cb_event(struct nl_object *obj, void *arg)
{
 struct get_neigh_handler *neigh_handler =
  (struct get_neigh_handler *)arg;

 if (nl_object_match_filter(
  obj,
  (struct nl_object *)neigh_handler->filter_neigh)) {
  struct rtnl_neigh *neigh = (struct rtnl_neigh *)obj;

  if (neigh_handler->found_ll_addr == ((void*)0)) {
   if (rtnl_neigh_get_lladdr(neigh) == ((void*)0))
    return;

   neigh_handler->found_ll_addr =
    nl_addr_clone(rtnl_neigh_get_lladdr(neigh));
  }
 }
}
