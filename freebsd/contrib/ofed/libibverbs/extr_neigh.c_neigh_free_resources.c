
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_neigh_handler {int * sock; int * link_cache; int * route_cache; int * neigh_cache; int * found_ll_addr; int * dst; int * src; int * filter_neigh; } ;


 int nl_addr_put (int *) ;
 int nl_cache_free (int *) ;
 int nl_cache_mngt_unprovide (int *) ;
 int nl_close (int *) ;
 int nl_socket_free (int *) ;
 int rtnl_neigh_put (int *) ;

void neigh_free_resources(struct get_neigh_handler *neigh_handler)
{

 if (neigh_handler->filter_neigh != ((void*)0)) {
  rtnl_neigh_put(neigh_handler->filter_neigh);
  neigh_handler->filter_neigh = ((void*)0);
 }

 if (neigh_handler->src != ((void*)0)) {
  nl_addr_put(neigh_handler->src);
  neigh_handler->src = ((void*)0);
 }

 if (neigh_handler->dst != ((void*)0)) {
  nl_addr_put(neigh_handler->dst);
  neigh_handler->dst = ((void*)0);
 }

 if (neigh_handler->found_ll_addr != ((void*)0)) {
  nl_addr_put(neigh_handler->found_ll_addr);
  neigh_handler->found_ll_addr = ((void*)0);
 }

 if (neigh_handler->neigh_cache != ((void*)0)) {
  nl_cache_mngt_unprovide(neigh_handler->neigh_cache);
  nl_cache_free(neigh_handler->neigh_cache);
  neigh_handler->neigh_cache = ((void*)0);
 }

 if (neigh_handler->route_cache != ((void*)0)) {
  nl_cache_mngt_unprovide(neigh_handler->route_cache);
  nl_cache_free(neigh_handler->route_cache);
  neigh_handler->route_cache = ((void*)0);
 }

 if (neigh_handler->link_cache != ((void*)0)) {
  nl_cache_mngt_unprovide(neigh_handler->link_cache);
  nl_cache_free(neigh_handler->link_cache);
  neigh_handler->link_cache = ((void*)0);
 }

 if (neigh_handler->sock != ((void*)0)) {
  nl_close(neigh_handler->sock);
  nl_socket_free(neigh_handler->sock);
  neigh_handler->sock = ((void*)0);
 }
}
