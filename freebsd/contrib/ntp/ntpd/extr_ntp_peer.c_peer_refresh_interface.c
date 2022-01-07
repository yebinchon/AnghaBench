
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct peer {int cast_flags; scalar_t__ pmode; int srcadr; TYPE_1__* dstadr; int keyid; int ttl; int flags; int maxpoll; int minpoll; int version; int hmode; } ;
struct TYPE_6__ {int flags; int mask; int bcast; int sin; int ifindex; int name; int bfd; int fd; } ;
typedef TYPE_1__ endpt ;


 int DPRINTF (int,char*) ;
 int INT_BROADCAST ;
 int MDF_ACAST ;
 int MDF_BCAST ;
 int MDF_MCAST ;
 scalar_t__ MODE_BROADCAST ;
 int enable_broadcast (TYPE_1__*,int *) ;
 int enable_multicast_if (TYPE_1__*,int *) ;
 int peer_clear (struct peer*,char*) ;
 TYPE_1__* select_peerinterface (struct peer*,int *,int *) ;
 int set_peerdstadr (struct peer*,TYPE_1__*) ;
 char* stoa (int *) ;

__attribute__((used)) static void
peer_refresh_interface(
 struct peer *p
 )
{
 endpt * niface;
 endpt * piface;

 niface = select_peerinterface(p, &p->srcadr, ((void*)0));

 DPRINTF(4, (
     "peer_refresh_interface: %s->%s mode %d vers %d poll %d %d flags 0x%x 0x%x ttl %u key %08x: new interface: ",
     p->dstadr == ((void*)0) ? "<null>" :
     stoa(&p->dstadr->sin), stoa(&p->srcadr), p->hmode,
     p->version, p->minpoll, p->maxpoll, p->flags, p->cast_flags,
     p->ttl, p->keyid));
 if (niface != ((void*)0)) {
  DPRINTF(4, (
      "fd=%d, bfd=%d, name=%.16s, flags=0x%x, ifindex=%u, sin=%s",
      niface->fd, niface->bfd, niface->name,
      niface->flags, niface->ifindex,
      stoa(&niface->sin)));
  if (niface->flags & INT_BROADCAST)
   DPRINTF(4, (", bcast=%s",
    stoa(&niface->bcast)));
  DPRINTF(4, (", mask=%s\n", stoa(&niface->mask)));
 } else {
  DPRINTF(4, ("<NONE>\n"));
 }

 piface = p->dstadr;
 set_peerdstadr(p, niface);
 if (p->dstadr != ((void*)0)) {



  if (p->dstadr != piface && !(MDF_ACAST & p->cast_flags)
      && MODE_BROADCAST != p->pmode)
   peer_clear(p, "XFAC");




  if (MDF_BCAST & p->cast_flags)
   enable_broadcast(p->dstadr, &p->srcadr);





  if (MDF_MCAST & p->cast_flags)
   enable_multicast_if(p->dstadr, &p->srcadr);
 }
}
