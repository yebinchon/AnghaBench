
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ev_sender; } ;
typedef TYPE_1__ isc_socket_newconnev_t ;
typedef int isc_event_t ;
struct TYPE_8__ {TYPE_2__* ev_arg; int ev_action; TYPE_2__* ev_sender; } ;
struct TYPE_7__ {int pending_accept; int references; TYPE_3__ readable_ev; int accept_list; } ;
typedef TYPE_2__ isc__socket_t ;
typedef TYPE_3__ intev_t ;


 int INSIST (int) ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 int internal_accept ;
 int isc_task_send (int ,int **) ;

__attribute__((used)) static void
dispatch_accept(isc__socket_t *sock) {
 intev_t *iev;
 isc_socket_newconnev_t *ev;

 INSIST(!sock->pending_accept);





 ev = ISC_LIST_HEAD(sock->accept_list);
 if (ev == ((void*)0))
  return;

 sock->pending_accept = 1;
 iev = &sock->readable_ev;

 sock->references++;
 iev->ev_sender = sock;
 iev->ev_action = internal_accept;
 iev->ev_arg = sock;

 isc_task_send(ev->ev_sender, (isc_event_t **)&iev);
}
