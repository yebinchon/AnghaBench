
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ n; scalar_t__ minimum; int result; } ;
typedef TYPE_2__ isc_socketevent_t ;
struct TYPE_10__ {scalar_t__ remaining; } ;
struct TYPE_12__ {scalar_t__ pending_recv; int recv_list; TYPE_1__ recvbuf; } ;
typedef TYPE_3__ isc_socket_t ;


 int ISC_LIST_EMPTY (int ) ;
 TYPE_2__* ISC_LIST_HEAD (int ) ;
 int ISC_R_SUCCESS ;
 int fill_recv (TYPE_3__*,TYPE_2__*) ;
 int send_recvdone_event (TYPE_3__*,TYPE_2__**) ;

__attribute__((used)) static void
completeio_recv(isc_socket_t *sock)
{
 isc_socketevent_t *dev;





 if (sock->pending_recv > 0)
  return;

 while (sock->recvbuf.remaining > 0 && !ISC_LIST_EMPTY(sock->recv_list)) {
  dev = ISC_LIST_HEAD(sock->recv_list);





  fill_recv(sock, dev);




  if (dev->n >= dev->minimum) {
   dev->result = ISC_R_SUCCESS;
   send_recvdone_event(sock, &dev);
  }
 }
}
