
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int accept_list; } ;
typedef TYPE_1__ isc_task_t ;
typedef TYPE_1__ isc_socket_t ;
struct TYPE_11__ {TYPE_1__* ev_sender; } ;
typedef TYPE_3__ isc_socket_newconnev_t ;
typedef int isc_event_t ;


 int CONSISTENT (TYPE_1__*) ;
 int INSIST (int) ;
 scalar_t__ ISC_LINK_LINKED (TYPE_3__*,int ) ;
 int ISC_LIST_DEQUEUE (int ,TYPE_3__*,int ) ;
 int ev_link ;
 int isc_task_sendanddetach (TYPE_1__**,int **) ;

__attribute__((used)) static void
send_acceptdone_event(isc_socket_t *sock, isc_socket_newconnev_t **adev) {
 isc_task_t *task;

 INSIST(adev != ((void*)0) && *adev != ((void*)0));

 task = (*adev)->ev_sender;
 (*adev)->ev_sender = sock;

 if (ISC_LINK_LINKED(*adev, ev_link))
  ISC_LIST_DEQUEUE(sock->accept_list, *adev, ev_link);

 isc_task_sendanddetach(&task, (isc_event_t **)adev);

 CONSISTENT(sock);
}
