
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int isc_task_t ;
typedef int isc_socketevent_t ;
struct TYPE_10__ {scalar_t__ ev_type; scalar_t__ ev_sender; } ;
typedef TYPE_1__ isc_event_t ;
struct TYPE_11__ {int pending_send; scalar_t__ references; int lock; int fd; int manager; int send_list; } ;
typedef TYPE_2__ isc__socket_t ;





 int INSIST (int) ;
 int IOEVENT ;
 int ISC_LIST_EMPTY (int ) ;
 int * ISC_LIST_HEAD (int ) ;
 int ISC_MSGSET_SOCKET ;
 int ISC_MSG_INTERNALSEND ;
 scalar_t__ ISC_SOCKEVENT_INTW ;
 int LOCK (int *) ;
 int SELECT_POKE_WRITE ;
 int UNLOCK (int *) ;
 int VALID_SOCKET (TYPE_2__*) ;
 int destroy (TYPE_2__**) ;
 int doio_send (TYPE_2__*,int *) ;
 int isc_msgcat ;
 int select_poke (int ,int ,int ) ;
 int send_senddone_event (TYPE_2__*,int **) ;
 int socket_log (TYPE_2__*,int *,int ,int ,int ,int ,char*,int *,TYPE_1__*) ;

__attribute__((used)) static void
internal_send(isc_task_t *me, isc_event_t *ev) {
 isc_socketevent_t *dev;
 isc__socket_t *sock;

 INSIST(ev->ev_type == ISC_SOCKEVENT_INTW);




 sock = (isc__socket_t *)ev->ev_sender;
 INSIST(VALID_SOCKET(sock));

 LOCK(&sock->lock);
 socket_log(sock, ((void*)0), IOEVENT,
     isc_msgcat, ISC_MSGSET_SOCKET, ISC_MSG_INTERNALSEND,
     "internal_send: task %p got event %p", me, ev);

 INSIST(sock->pending_send == 1);
 sock->pending_send = 0;

 INSIST(sock->references > 0);
 sock->references--;
 if (sock->references == 0) {
  UNLOCK(&sock->lock);
  destroy(&sock);
  return;
 }





 dev = ISC_LIST_HEAD(sock->send_list);
 while (dev != ((void*)0)) {
  switch (doio_send(sock, dev)) {
  case 129:
   goto poke;

  case 130:
  case 128:
   send_senddone_event(sock, &dev);
   break;
  }

  dev = ISC_LIST_HEAD(sock->send_list);
 }

 poke:
 if (!ISC_LIST_EMPTY(sock->send_list))
  select_poke(sock->manager, sock->fd, SELECT_POKE_WRITE);

 UNLOCK(&sock->lock);
}
