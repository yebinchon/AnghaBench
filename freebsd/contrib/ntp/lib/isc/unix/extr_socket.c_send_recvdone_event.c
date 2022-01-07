
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int recv_list; } ;
typedef TYPE_1__ isc_task_t ;
struct TYPE_11__ {int attributes; TYPE_1__* ev_sender; } ;
typedef TYPE_2__ isc_socketevent_t ;
typedef int isc_event_t ;
typedef TYPE_1__ isc__socket_t ;


 scalar_t__ ISC_LINK_LINKED (TYPE_2__*,int ) ;
 int ISC_LIST_DEQUEUE (int ,TYPE_2__*,int ) ;
 int ISC_SOCKEVENTATTR_ATTACHED ;
 int ev_link ;
 int isc_task_send (TYPE_1__*,int **) ;
 int isc_task_sendanddetach (TYPE_1__**,int **) ;

__attribute__((used)) static void
send_recvdone_event(isc__socket_t *sock, isc_socketevent_t **dev) {
 isc_task_t *task;

 task = (*dev)->ev_sender;

 (*dev)->ev_sender = sock;

 if (ISC_LINK_LINKED(*dev, ev_link))
  ISC_LIST_DEQUEUE(sock->recv_list, *dev, ev_link);

 if (((*dev)->attributes & ISC_SOCKEVENTATTR_ATTACHED)
     == ISC_SOCKEVENTATTR_ATTACHED)
  isc_task_sendanddetach(&task, (isc_event_t **)dev);
 else
  isc_task_send(task, (isc_event_t **)dev);
}
