
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ev_sender; } ;
typedef TYPE_1__ isc_socket_connev_t ;
typedef int isc_event_t ;
struct TYPE_7__ {TYPE_2__* ev_arg; int ev_action; TYPE_2__* ev_sender; } ;
struct TYPE_6__ {int references; int connecting; TYPE_1__* connect_ev; TYPE_3__ writable_ev; } ;
typedef TYPE_2__ isc__socket_t ;
typedef TYPE_3__ intev_t ;


 int INSIST (int ) ;
 int internal_connect ;
 int isc_task_send (int ,int **) ;

__attribute__((used)) static void
dispatch_connect(isc__socket_t *sock) {
 intev_t *iev;
 isc_socket_connev_t *ev;

 iev = &sock->writable_ev;

 ev = sock->connect_ev;
 INSIST(ev != ((void*)0));

 INSIST(sock->connecting);

 sock->references++;
 iev->ev_sender = sock;
 iev->ev_action = internal_connect;
 iev->ev_arg = sock;

 isc_task_send(ev->ev_sender, (isc_event_t **)&iev);
}
