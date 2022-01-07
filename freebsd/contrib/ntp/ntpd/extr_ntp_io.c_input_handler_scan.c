
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int ;
struct refclockio {scalar_t__ fd; TYPE_1__* srcclock; struct refclockio* next; } ;
struct asyncio_reader {scalar_t__ fd; int (* receiver ) (struct asyncio_reader*) ;struct asyncio_reader* link; } ;
typedef int l_fp ;
typedef int fd_set ;
struct TYPE_8__ {scalar_t__ fd; int flags; scalar_t__ bfd; struct TYPE_8__* elink; } ;
typedef TYPE_2__ endpt ;
struct TYPE_9__ {int resp_read_pipe; int resp_ready_seen; } ;
typedef TYPE_3__ blocking_child ;
struct TYPE_7__ {int srcadr; } ;
typedef scalar_t__ SOCKET ;


 int EAGAIN ;
 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 int INT_BCASTOPEN ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int L_SUB (int *,int *) ;
 int TRUE ;
 struct asyncio_reader* asyncio_reader_list ;
 int blocking_child_ready_seen ;
 TYPE_3__** blocking_children ;
 size_t blocking_children_alloc ;
 int collect_timing (int *,char*,int,int *) ;
 int debug ;
 TYPE_2__* ep_list ;
 int errno ;
 int get_systime (int *) ;
 int handler_pkts ;
 char const* lfptoms (int *,int) ;
 int maintain_activefds (scalar_t__,int ) ;
 int msyslog (int ,char*,char const*) ;
 int read_network_packet (scalar_t__,TYPE_2__*,int ) ;
 int read_refclock_packet (scalar_t__,struct refclockio*,int ) ;
 struct refclockio* refio ;
 char* refnumtoa (int *) ;
 int stub1 (struct asyncio_reader*) ;

__attribute__((used)) static void
input_handler_scan(
 const l_fp * cts,
 const fd_set * pfds
 )
{
 int buflen;
 u_int idx;
 int doing;
 SOCKET fd;
 blocking_child *c;
 l_fp ts;




 endpt * ep;
 ++handler_pkts;
 ts = *cts;
 for (ep = ep_list; ep != ((void*)0); ep = ep->elink) {
  for (doing = 0; doing < 2; doing++) {
   if (!doing) {
    fd = ep->fd;
   } else {
    if (!(ep->flags & INT_BCASTOPEN))
     break;
    fd = ep->bfd;
   }
   if (fd < 0)
    continue;
   if (FD_ISSET(fd, pfds))
    do {
     buflen = read_network_packet(
       fd, ep, ts);
    } while (buflen > 0);

  }
 }
 for (idx = 0; idx < blocking_children_alloc; idx++) {
  c = blocking_children[idx];
  if (((void*)0) == c || -1 == c->resp_read_pipe)
   continue;
  if (FD_ISSET(c->resp_read_pipe, pfds)) {
   ++c->resp_ready_seen;
   ++blocking_child_ready_seen;
  }
 }
}
