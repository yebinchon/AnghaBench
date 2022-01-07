
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int ip6addr; } ;
struct ip6addr {int list; int addr; } ;
struct in6_addr {int dummy; } ;


 int dl_list_add_tail (int *,int *) ;
 int os_memcpy (int *,struct in6_addr*,int) ;
 struct ip6addr* os_zalloc (int) ;

__attribute__((used)) static int sta_ip6addr_add(struct sta_info *sta, struct in6_addr *addr)
{
 struct ip6addr *ip6addr;

 ip6addr = os_zalloc(sizeof(*ip6addr));
 if (!ip6addr)
  return -1;

 os_memcpy(&ip6addr->addr, addr, sizeof(*addr));

 dl_list_add_tail(&sta->ip6addr, &ip6addr->list);

 return 0;
}
