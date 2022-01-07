
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rtnl_link {int dummy; } ;
struct get_neigh_handler {int oif; int link_cache; } ;


 int EINVAL ;
 int errno ;
 struct rtnl_link* rtnl_link_get (int ,int ) ;
 scalar_t__ rtnl_link_is_vlan (struct rtnl_link*) ;
 int rtnl_link_put (struct rtnl_link*) ;
 int rtnl_link_vlan_get_id (struct rtnl_link*) ;

uint16_t neigh_get_vlan_id_from_dev(struct get_neigh_handler *neigh_handler)
{
 struct rtnl_link *link;
 int vid = 0xffff;

 link = rtnl_link_get(neigh_handler->link_cache, neigh_handler->oif);
 if (link == ((void*)0)) {
  errno = EINVAL;
  return vid;
 }

 if (rtnl_link_is_vlan(link))
  vid = rtnl_link_vlan_get_id(link);
 rtnl_link_put(link);
 return vid >= 0 && vid <= 0xfff ? vid : 0xffff;
}
