
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * connect_ev; } ;
typedef TYPE_1__ isc_task_t ;
typedef TYPE_1__ isc_socket_t ;
struct TYPE_9__ {TYPE_1__* ev_sender; } ;
typedef TYPE_3__ isc_socket_connev_t ;
typedef int isc_event_t ;


 int CONSISTENT (TYPE_1__*) ;
 int INSIST (int) ;
 int isc_task_sendanddetach (TYPE_1__**,int **) ;

__attribute__((used)) static void
send_connectdone_event(isc_socket_t *sock, isc_socket_connev_t **cdev) {
 isc_task_t *task;

 INSIST(cdev != ((void*)0) && *cdev != ((void*)0));

 task = (*cdev)->ev_sender;
 (*cdev)->ev_sender = sock;

 sock->connect_ev = ((void*)0);

 isc_task_sendanddetach(&task, (isc_event_t **)cdev);

 CONSISTENT(sock);
}
