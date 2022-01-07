
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int isc_task_t ;
struct TYPE_14__ {int result; } ;
typedef TYPE_1__ isc_socketevent_t ;
struct TYPE_15__ {scalar_t__ ev_type; TYPE_3__* ev_sender; } ;
typedef TYPE_2__ isc_event_t ;
struct TYPE_16__ {int pending_recv; scalar_t__ references; int lock; int fd; int manager; int recv_list; } ;
typedef TYPE_3__ isc__socket_t ;






 int INSIST (int) ;
 int IOEVENT ;
 int ISC_LIST_EMPTY (int ) ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 int ISC_MSGSET_SOCKET ;
 int ISC_MSG_INTERNALRECV ;
 int ISC_R_EOF ;
 scalar_t__ ISC_SOCKEVENT_INTR ;
 int LOCK (int *) ;
 int SELECT_POKE_READ ;
 int UNLOCK (int *) ;
 int VALID_SOCKET (TYPE_3__*) ;
 int destroy (TYPE_3__**) ;
 int doio_recv (TYPE_3__*,TYPE_1__*) ;
 int isc_msgcat ;
 int select_poke (int ,int ,int ) ;
 int send_recvdone_event (TYPE_3__*,TYPE_1__**) ;
 int socket_log (TYPE_3__*,int *,int ,int ,int ,int ,char*,int *,TYPE_2__*) ;

__attribute__((used)) static void
internal_recv(isc_task_t *me, isc_event_t *ev) {
 isc_socketevent_t *dev;
 isc__socket_t *sock;

 INSIST(ev->ev_type == ISC_SOCKEVENT_INTR);

 sock = ev->ev_sender;
 INSIST(VALID_SOCKET(sock));

 LOCK(&sock->lock);
 socket_log(sock, ((void*)0), IOEVENT,
     isc_msgcat, ISC_MSGSET_SOCKET, ISC_MSG_INTERNALRECV,
     "internal_recv: task %p got event %p", me, ev);

 INSIST(sock->pending_recv == 1);
 sock->pending_recv = 0;

 INSIST(sock->references > 0);
 sock->references--;
 if (sock->references == 0) {
  UNLOCK(&sock->lock);
  destroy(&sock);
  return;
 }





 dev = ISC_LIST_HEAD(sock->recv_list);
 while (dev != ((void*)0)) {
  switch (doio_recv(sock, dev)) {
  case 129:
   goto poke;

  case 131:





   do {
    dev->result = ISC_R_EOF;
    send_recvdone_event(sock, &dev);
    dev = ISC_LIST_HEAD(sock->recv_list);
   } while (dev != ((void*)0));
   goto poke;

  case 128:
  case 130:
   send_recvdone_event(sock, &dev);
   break;
  }

  dev = ISC_LIST_HEAD(sock->recv_list);
 }

 poke:
 if (!ISC_LIST_EMPTY(sock->recv_list))
  select_poke(sock->manager, sock->fd, SELECT_POKE_READ);

 UNLOCK(&sock->lock);
}
