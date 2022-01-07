
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct peer {int cast_flags; } ;
typedef int sockaddr_u ;
struct TYPE_8__ {int flags; int sin; } ;
typedef TYPE_1__ endpt ;


 TYPE_1__* ANY_INTERFACE_CHOOSE (int *) ;
 int DPRINTF (int,char*) ;
 int INT_WILDCARD ;
 scalar_t__ ISREFCLOCKADR (int *) ;
 int MDF_ACAST ;
 int MDF_BCAST ;
 int MDF_BCLNT ;
 int MDF_MCAST ;
 int accept_wildcard_if_for_winnt ;
 TYPE_1__* findbcastinter (int *) ;
 TYPE_1__* findinterface (int *) ;
 TYPE_1__* loopback_interface ;
 int stoa (int *) ;

endpt *
select_peerinterface(
 struct peer * peer,
 sockaddr_u * srcadr,
 endpt * dstadr
 )
{
 endpt *ep;

 endpt *wild;

 wild = ANY_INTERFACE_CHOOSE(srcadr);
 if (ISREFCLOCKADR(srcadr)) {
  ep = loopback_interface;
 } else if (peer->cast_flags &
     (MDF_BCLNT | MDF_ACAST | MDF_MCAST | MDF_BCAST)) {
  ep = findbcastinter(srcadr);
  if (ep != ((void*)0))
   DPRINTF(4, ("Found *-cast interface %s for address %s\n",
    stoa(&ep->sin), stoa(srcadr)));
  else
   DPRINTF(4, ("No *-cast local address found for address %s\n",
    stoa(srcadr)));
 } else {
  ep = dstadr;
  if (((void*)0) == ep)
   ep = wild;
 }






 if (wild == ep)
  ep = findinterface(srcadr);





 if (ep != ((void*)0) && INT_WILDCARD & ep->flags)
  if (!accept_wildcard_if_for_winnt)
   ep = ((void*)0);




 return ep;
}
