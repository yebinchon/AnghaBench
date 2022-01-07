
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int isc_task_t ;
typedef int isc_socket_t ;
struct TYPE_8__ {scalar_t__ ev_type; scalar_t__ ev_sender; } ;
typedef TYPE_1__ isc_event_t ;
struct TYPE_9__ {int pending_recv; int (* fdwatchcb ) (int *,int *,int ,int ) ;scalar_t__ references; int lock; int fd; int manager; int fdwatcharg; } ;
typedef TYPE_2__ isc__socket_t ;


 int INSIST (int) ;
 int IOEVENT ;
 int ISC_MSGSET_SOCKET ;
 int ISC_MSG_INTERNALRECV ;
 scalar_t__ ISC_SOCKEVENT_INTR ;
 int ISC_SOCKFDWATCH_READ ;
 int LOCK (int *) ;
 int SELECT_POKE_READ ;
 int UNLOCK (int *) ;
 int VALID_SOCKET (TYPE_2__*) ;
 int destroy (TYPE_2__**) ;
 int isc_msgcat ;
 int select_poke (int ,int ,int ) ;
 int socket_log (TYPE_2__*,int *,int ,int ,int ,int ,char*,int *,TYPE_1__*) ;
 int stub1 (int *,int *,int ,int ) ;

__attribute__((used)) static void
internal_fdwatch_read(isc_task_t *me, isc_event_t *ev) {
 isc__socket_t *sock;
 int more_data;

 INSIST(ev->ev_type == ISC_SOCKEVENT_INTR);




 sock = (isc__socket_t *)ev->ev_sender;
 INSIST(VALID_SOCKET(sock));

 LOCK(&sock->lock);
 socket_log(sock, ((void*)0), IOEVENT,
     isc_msgcat, ISC_MSGSET_SOCKET, ISC_MSG_INTERNALRECV,
     "internal_fdwatch_read: task %p got event %p", me, ev);

 INSIST(sock->pending_recv == 1);

 UNLOCK(&sock->lock);
 more_data = (sock->fdwatchcb)(me, (isc_socket_t *)sock,
          sock->fdwatcharg, ISC_SOCKFDWATCH_READ);
 LOCK(&sock->lock);

 sock->pending_recv = 0;

 INSIST(sock->references > 0);
 sock->references--;
 if (sock->references == 0) {
  UNLOCK(&sock->lock);
  destroy(&sock);
  return;
 }

 if (more_data)
  select_poke(sock->manager, sock->fd, SELECT_POKE_READ);

 UNLOCK(&sock->lock);
}
