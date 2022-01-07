
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sockaddr_u ;
struct TYPE_4__ {scalar_t__ family; int flags; int sin; scalar_t__ ignore_packets; struct TYPE_4__* elink; } ;
typedef TYPE_1__ endpt ;


 scalar_t__ AF (int *) ;
 int DPRINTF (int,char*) ;
 int ZERO_SOCK (int *) ;
 int calc_addr_distance (int *,int *,int *) ;
 int cmp_addr_distance (int *,int *) ;
 TYPE_1__* ep_list ;
 int stoa (int *) ;

endpt *
findclosestinterface(
 sockaddr_u * addr,
 int flags
 )
{
 endpt * ep;
 endpt * winner;
 sockaddr_u addr_dist;
 sockaddr_u min_dist;

 ZERO_SOCK(&min_dist);
 winner = ((void*)0);

 for (ep = ep_list; ep != ((void*)0); ep = ep->elink) {
  if (ep->ignore_packets ||
      AF(addr) != ep->family ||
      flags & ep->flags)
   continue;

  calc_addr_distance(&addr_dist, addr, &ep->sin);
  if (((void*)0) == winner ||
      -1 == cmp_addr_distance(&addr_dist, &min_dist)) {
   min_dist = addr_dist;
   winner = ep;
  }
 }
 if (((void*)0) == winner)
  DPRINTF(4, ("findclosestinterface(%s) failed\n",
       stoa(addr)));
 else
  DPRINTF(4, ("findclosestinterface(%s) -> %s\n",
       stoa(addr), stoa(&winner->sin)));

 return winner;
}
