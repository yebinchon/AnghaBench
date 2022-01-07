
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sockaddr_u ;
struct TYPE_6__ {int flags; int name; int ifnum; int sin; int bcast; int mask; scalar_t__ ignore_packets; struct TYPE_6__* elink; } ;
typedef TYPE_1__ endpt ;


 scalar_t__ AF (int *) ;
 TYPE_1__* ANY_INTERFACE_CHOOSE (int *) ;
 int DPRINTF (int,char*) ;
 int IN6_IS_ADDR_LINKLOCAL (int ) ;
 scalar_t__ IN6_IS_ADDR_MC_LINKLOCAL (int ) ;
 int INT_LOOPBACK ;
 int INT_MULTICAST ;
 int INT_WILDCARD ;
 scalar_t__ IS_IPV4 (int *) ;
 scalar_t__ IS_IPV6 (int *) ;
 int NSRCADR (int *) ;
 int PSOCK_ADDR6 (int *) ;
 scalar_t__ SOCK_EQ (int *,int *) ;
 scalar_t__ addr_ismulticast (int *) ;
 TYPE_1__* ep_list ;
 TYPE_1__* findlocalinterface (int *,int,int) ;
 int * netof (int *) ;
 int stoa (int *) ;

endpt *
findbcastinter(
 sockaddr_u *addr
 )
{
 endpt * iface;

 iface = ((void*)0);
 if (((void*)0) == iface) {
  DPRINTF(4, ("No bcast interface found for %s\n",
       stoa(addr)));
  iface = ANY_INTERFACE_CHOOSE(addr);
 } else {
  DPRINTF(4, ("Found bcast-/mcast- interface index #%d %s\n",
       iface->ifnum, iface->name));
 }

 return iface;
}
