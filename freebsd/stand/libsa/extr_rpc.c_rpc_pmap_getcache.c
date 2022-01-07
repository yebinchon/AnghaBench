
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct pmap_list {scalar_t__ prog; scalar_t__ vers; int port; TYPE_1__ addr; } ;
struct in_addr {scalar_t__ s_addr; } ;


 struct pmap_list* rpc_pmap_list ;
 size_t rpc_pmap_num ;

int
rpc_pmap_getcache(struct in_addr addr, u_int prog, u_int vers)
{
 struct pmap_list *pl;

 for (pl = rpc_pmap_list; pl < &rpc_pmap_list[rpc_pmap_num]; pl++) {
  if (pl->addr.s_addr == addr.s_addr &&
   pl->prog == prog && pl->vers == vers )
  {
   return (pl->port);
  }
 }
 return (-1);
}
