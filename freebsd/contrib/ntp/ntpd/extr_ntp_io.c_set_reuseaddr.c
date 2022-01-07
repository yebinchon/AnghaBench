
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int flag ;
struct TYPE_3__ {int flags; scalar_t__ fd; int sin; int name; struct TYPE_3__* elink; } ;
typedef TYPE_1__ endpt ;


 int DPRINTF (int,char*) ;
 int INT_WILDCARD ;
 scalar_t__ INVALID_SOCKET ;
 int LOG_ERR ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 TYPE_1__* ep_list ;
 int msyslog (int ,char*,int ,char*) ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,void*,int) ;
 int stoa (int *) ;

__attribute__((used)) static void
set_reuseaddr(
 int flag
 )
{

 endpt *ep;

 for (ep = ep_list; ep != ((void*)0); ep = ep->elink) {
  if (ep->flags & INT_WILDCARD)
   continue;





  DPRINTF(4, ("setting SO_REUSEADDR on %.16s@%s to %s\n",
       ep->name, stoa(&ep->sin),
       flag ? "on" : "off"));

  if (ep->fd != INVALID_SOCKET) {
   if (setsockopt(ep->fd, SOL_SOCKET, SO_REUSEADDR,
           (void *)&flag, sizeof(flag))) {
    msyslog(LOG_ERR, "set_reuseaddr: setsockopt(%s, SO_REUSEADDR, %s) failed: %m",
     stoa(&ep->sin), flag ? "on" : "off");
   }
  }
 }

}
