
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ bfd; int name; int ifnum; int bcast; struct TYPE_4__* elink; } ;
typedef TYPE_1__ endpt ;


 int INT_BCASTOPEN ;
 int INT_WILDCARD ;
 scalar_t__ INVALID_SOCKET ;
 int ISC_FALSE ;
 int LOG_INFO ;
 int broadcast_client_enabled ;
 int close_and_delete_fd_from_list (scalar_t__) ;
 TYPE_1__* ep_list ;
 int io_completion_port_remove_socket (scalar_t__,TYPE_1__*) ;
 int msyslog (int ,char*,int ,int ,int ) ;
 int stoa (int *) ;

void
io_unsetbclient(void)
{
 endpt *ep;

 for (ep = ep_list; ep != ((void*)0); ep = ep->elink) {
  if (INT_WILDCARD & ep->flags)
   continue;
  if (!(INT_BCASTOPEN & ep->flags))
   continue;

  if (ep->bfd != INVALID_SOCKET) {

   msyslog(LOG_INFO,
    "stop listening for broadcasts to %s on interface #%d %s",
    stoa(&ep->bcast), ep->ifnum, ep->name);



   close_and_delete_fd_from_list(ep->bfd);
   ep->bfd = INVALID_SOCKET;
  }
  ep->flags &= ~INT_BCASTOPEN;
 }
 broadcast_client_enabled = ISC_FALSE;
}
