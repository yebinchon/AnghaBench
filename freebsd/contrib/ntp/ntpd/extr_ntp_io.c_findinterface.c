
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sockaddr_u ;
struct TYPE_5__ {int name; int ifnum; } ;
typedef TYPE_1__ endpt ;


 TYPE_1__* ANY_INTERFACE_CHOOSE (int *) ;
 int DPRINTF (int,char*) ;
 int INT_WILDCARD ;
 TYPE_1__* findlocalinterface (int *,int ,int ) ;
 int stoa (int *) ;

endpt *
findinterface(
 sockaddr_u *addr
 )
{
 endpt *iface;

 iface = findlocalinterface(addr, INT_WILDCARD, 0);

 if (((void*)0) == iface) {
  DPRINTF(4, ("Found no interface for address %s - returning wildcard\n",
       stoa(addr)));

  iface = ANY_INTERFACE_CHOOSE(addr);
 } else
  DPRINTF(4, ("Found interface #%d %s for address %s\n",
       iface->ifnum, iface->name, stoa(addr)));

 return iface;
}
