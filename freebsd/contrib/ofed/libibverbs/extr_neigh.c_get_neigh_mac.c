
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_neigh {int dummy; } ;
struct nl_addr {int dummy; } ;
struct get_neigh_handler {int dst; int oif; int neigh_cache; } ;


 struct nl_addr* nl_addr_clone (struct nl_addr*) ;
 struct rtnl_neigh* rtnl_neigh_get (int ,int ,int ) ;
 struct nl_addr* rtnl_neigh_get_lladdr (struct rtnl_neigh*) ;
 int rtnl_neigh_put (struct rtnl_neigh*) ;

__attribute__((used)) static struct nl_addr *get_neigh_mac(struct get_neigh_handler *neigh_handler)
{
 struct rtnl_neigh *neigh;
 struct nl_addr *ll_addr = ((void*)0);




 neigh = rtnl_neigh_get(neigh_handler->neigh_cache,
          neigh_handler->oif,
          neigh_handler->dst);
 if (neigh == ((void*)0))
  return ((void*)0);

 ll_addr = rtnl_neigh_get_lladdr(neigh);
 if (((void*)0) != ll_addr)
  ll_addr = nl_addr_clone(ll_addr);

 rtnl_neigh_put(neigh);
 return ll_addr;
}
