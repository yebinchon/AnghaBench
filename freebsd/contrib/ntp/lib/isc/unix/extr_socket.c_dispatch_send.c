
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int isc_task_t ;
struct TYPE_8__ {int * ev_sender; } ;
typedef TYPE_1__ isc_socketevent_t ;
typedef int isc_event_t ;
struct TYPE_10__ {TYPE_2__* ev_arg; int ev_action; TYPE_2__* ev_sender; } ;
struct TYPE_9__ {int pending_send; scalar_t__ type; int references; TYPE_3__ writable_ev; int * fdwatchtask; int send_list; } ;
typedef TYPE_2__ isc__socket_t ;
typedef TYPE_3__ intev_t ;


 int EVENT ;
 int INSIST (int) ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 int internal_fdwatch_write ;
 int internal_send ;
 scalar_t__ isc_sockettype_fdwatch ;
 int isc_task_send (int *,int **) ;
 int socket_log (TYPE_2__*,int *,int ,int *,int ,int ,char*,TYPE_1__*,int *) ;

__attribute__((used)) static void
dispatch_send(isc__socket_t *sock) {
 intev_t *iev;
 isc_socketevent_t *ev;
 isc_task_t *sender;

 INSIST(!sock->pending_send);

 if (sock->type != isc_sockettype_fdwatch) {
  ev = ISC_LIST_HEAD(sock->send_list);
  if (ev == ((void*)0))
   return;
  socket_log(sock, ((void*)0), EVENT, ((void*)0), 0, 0,
      "dispatch_send:  event %p -> task %p",
      ev, ev->ev_sender);
  sender = ev->ev_sender;
 } else {
  sender = sock->fdwatchtask;
 }

 sock->pending_send = 1;
 iev = &sock->writable_ev;

 sock->references++;
 iev->ev_sender = sock;
 if (sock->type == isc_sockettype_fdwatch)
  iev->ev_action = internal_fdwatch_write;
 else
  iev->ev_action = internal_send;
 iev->ev_arg = sock;

 isc_task_send(sender, (isc_event_t **)&iev);
}
