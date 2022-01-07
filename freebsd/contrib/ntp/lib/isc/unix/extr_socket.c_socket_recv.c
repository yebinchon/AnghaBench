
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int isc_task_t ;
struct TYPE_12__ {int result; int attributes; int * ev_sender; } ;
typedef TYPE_1__ isc_socketevent_t ;
typedef int isc_result_t ;
typedef scalar_t__ isc_boolean_t ;
struct TYPE_13__ {scalar_t__ type; int lock; int recv_list; int fd; int manager; int pending_recv; } ;
typedef TYPE_2__ isc__socket_t ;






 int EVENT ;
 scalar_t__ ISC_FALSE ;
 scalar_t__ ISC_LIST_EMPTY (int ) ;
 int ISC_LIST_ENQUEUE (int ,TYPE_1__*,int ) ;
 int ISC_R_EOF ;
 int ISC_R_INPROGRESS ;
 int ISC_R_SUCCESS ;
 int ISC_SOCKEVENTATTR_ATTACHED ;
 unsigned int ISC_SOCKFLAG_IMMEDIATE ;
 scalar_t__ ISC_TRUE ;
 int LOCK (int *) ;
 int SELECT_POKE_READ ;
 int UNLOCK (int *) ;
 int doio_recv (TYPE_2__*,TYPE_1__*) ;
 int ev_link ;
 scalar_t__ isc_sockettype_udp ;
 int isc_task_attach (int *,int **) ;
 int select_poke (int ,int ,int ) ;
 int send_recvdone_event (TYPE_2__*,TYPE_1__**) ;
 int socket_log (TYPE_2__*,int *,int ,int *,int ,int ,char*,TYPE_1__*,int *) ;

__attribute__((used)) static isc_result_t
socket_recv(isc__socket_t *sock, isc_socketevent_t *dev, isc_task_t *task,
     unsigned int flags)
{
 int io_state;
 isc_boolean_t have_lock = ISC_FALSE;
 isc_task_t *ntask = ((void*)0);
 isc_result_t result = ISC_R_SUCCESS;

 dev->ev_sender = task;

 if (sock->type == isc_sockettype_udp) {
  io_state = doio_recv(sock, dev);
 } else {
  LOCK(&sock->lock);
  have_lock = ISC_TRUE;

  if (ISC_LIST_EMPTY(sock->recv_list))
   io_state = doio_recv(sock, dev);
  else
   io_state = 129;
 }

 switch (io_state) {
 case 129:






  isc_task_attach(task, &ntask);
  dev->attributes |= ISC_SOCKEVENTATTR_ATTACHED;

  if (!have_lock) {
   LOCK(&sock->lock);
   have_lock = ISC_TRUE;
  }





  if (ISC_LIST_EMPTY(sock->recv_list) && !sock->pending_recv)
   select_poke(sock->manager, sock->fd, SELECT_POKE_READ);
  ISC_LIST_ENQUEUE(sock->recv_list, dev, ev_link);

  socket_log(sock, ((void*)0), EVENT, ((void*)0), 0, 0,
      "socket_recv: event %p -> task %p",
      dev, ntask);

  if ((flags & ISC_SOCKFLAG_IMMEDIATE) != 0)
   result = ISC_R_INPROGRESS;
  break;

 case 131:
  dev->result = ISC_R_EOF;


 case 130:
 case 128:
  if ((flags & ISC_SOCKFLAG_IMMEDIATE) == 0)
   send_recvdone_event(sock, &dev);
  break;
 }

 if (have_lock)
  UNLOCK(&sock->lock);

 return (result);
}
