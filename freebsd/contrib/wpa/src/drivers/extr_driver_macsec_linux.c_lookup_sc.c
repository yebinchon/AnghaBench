
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rtnl_link {int dummy; } ;
struct nl_object {int dummy; } ;
struct nl_cache {int dummy; } ;


 void* nl_cache_find (struct nl_cache*,struct nl_object*) ;
 struct rtnl_link* rtnl_link_macsec_alloc () ;
 int rtnl_link_macsec_set_sci (struct rtnl_link*,int ) ;
 int rtnl_link_put (struct rtnl_link*) ;
 int rtnl_link_set_link (struct rtnl_link*,int) ;

__attribute__((used)) static struct rtnl_link * lookup_sc(struct nl_cache *cache, int parent, u64 sci)
{
 struct rtnl_link *needle;
 void *match;

 needle = rtnl_link_macsec_alloc();
 if (!needle)
  return ((void*)0);

 rtnl_link_set_link(needle, parent);
 rtnl_link_macsec_set_sci(needle, sci);

 match = nl_cache_find(cache, (struct nl_object *) needle);
 rtnl_link_put(needle);

 return (struct rtnl_link *) match;
}
