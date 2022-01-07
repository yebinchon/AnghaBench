
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_neigh {int dummy; } ;
struct nl_addr {int dummy; } ;


 struct rtnl_neigh* rtnl_neigh_alloc () ;
 int rtnl_neigh_set_dst (struct rtnl_neigh*,struct nl_addr*) ;
 int rtnl_neigh_set_ifindex (struct rtnl_neigh*,int) ;

__attribute__((used)) static struct rtnl_neigh *create_filter_neigh_for_dst(struct nl_addr *dst_addr,
            int oif)
{
 struct rtnl_neigh *filter_neigh;

 filter_neigh = rtnl_neigh_alloc();
 if (filter_neigh == ((void*)0))
  return ((void*)0);

 rtnl_neigh_set_ifindex(filter_neigh, oif);
 rtnl_neigh_set_dst(filter_neigh, dst_addr);

 return filter_neigh;
}
