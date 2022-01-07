
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct in6_pktinfo {scalar_t__ ipi6_ifindex; } ;
typedef int isc_task_t ;
struct TYPE_14__ {int attributes; struct in6_pktinfo pktinfo; int address; int * ev_sender; } ;
typedef TYPE_1__ isc_socketevent_t ;
typedef int isc_sockaddr_t ;
typedef int isc_result_t ;
typedef scalar_t__ isc_boolean_t ;
struct TYPE_15__ {scalar_t__ type; int lock; int send_list; int fd; int manager; int pending_send; } ;
typedef TYPE_2__ isc__socket_t ;





 int EVENT ;
 scalar_t__ ISC_FALSE ;
 scalar_t__ ISC_LIST_EMPTY (int ) ;
 int ISC_LIST_ENQUEUE (int ,TYPE_1__*,int ) ;
 int ISC_MSGSET_SOCKET ;
 int ISC_MSG_PKTINFOPROVIDED ;
 int ISC_R_INPROGRESS ;
 int ISC_R_SUCCESS ;
 int ISC_SOCKEVENTATTR_ATTACHED ;
 int ISC_SOCKEVENTATTR_PKTINFO ;
 unsigned int ISC_SOCKFLAG_IMMEDIATE ;
 unsigned int ISC_SOCKFLAG_NORETRY ;
 scalar_t__ ISC_TRUE ;
 int LOCK (int *) ;
 int SELECT_POKE_WRITE ;
 int TRACE ;
 int UNLOCK (int *) ;
 int doio_send (TYPE_2__*,TYPE_1__*) ;
 int ev_link ;
 int isc_msgcat ;
 int isc_sockaddr_islinklocal (int *) ;
 int isc_sockaddr_issitelocal (int *) ;
 scalar_t__ isc_sockettype_udp ;
 int isc_task_attach (int *,int **) ;
 int select_poke (int ,int ,int ) ;
 int send_senddone_event (TYPE_2__*,TYPE_1__**) ;
 int set_dev_address (int *,TYPE_2__*,TYPE_1__*) ;
 int socket_log (TYPE_2__*,int *,int ,int *,int ,int ,char*,TYPE_1__*,...) ;

__attribute__((used)) static isc_result_t
socket_send(isc__socket_t *sock, isc_socketevent_t *dev, isc_task_t *task,
     isc_sockaddr_t *address, struct in6_pktinfo *pktinfo,
     unsigned int flags)
{
 int io_state;
 isc_boolean_t have_lock = ISC_FALSE;
 isc_task_t *ntask = ((void*)0);
 isc_result_t result = ISC_R_SUCCESS;

 dev->ev_sender = task;

 set_dev_address(address, sock, dev);
 if (pktinfo != ((void*)0)) {
  dev->attributes |= ISC_SOCKEVENTATTR_PKTINFO;
  dev->pktinfo = *pktinfo;

  if (!isc_sockaddr_issitelocal(&dev->address) &&
      !isc_sockaddr_islinklocal(&dev->address)) {
   socket_log(sock, ((void*)0), TRACE, isc_msgcat,
       ISC_MSGSET_SOCKET, ISC_MSG_PKTINFOPROVIDED,
       "pktinfo structure provided, ifindex %u "
       "(set to 0)", pktinfo->ipi6_ifindex);





   dev->pktinfo.ipi6_ifindex = 0;
  }
 }

 if (sock->type == isc_sockettype_udp)
  io_state = doio_send(sock, dev);
 else {
  LOCK(&sock->lock);
  have_lock = ISC_TRUE;

  if (ISC_LIST_EMPTY(sock->send_list))
   io_state = doio_send(sock, dev);
  else
   io_state = 129;
 }

 switch (io_state) {
 case 129:




  if ((flags & ISC_SOCKFLAG_NORETRY) == 0) {
   isc_task_attach(task, &ntask);
   dev->attributes |= ISC_SOCKEVENTATTR_ATTACHED;

   if (!have_lock) {
    LOCK(&sock->lock);
    have_lock = ISC_TRUE;
   }






   if (ISC_LIST_EMPTY(sock->send_list) &&
       !sock->pending_send)
    select_poke(sock->manager, sock->fd,
         SELECT_POKE_WRITE);
   ISC_LIST_ENQUEUE(sock->send_list, dev, ev_link);

   socket_log(sock, ((void*)0), EVENT, ((void*)0), 0, 0,
       "socket_send: event %p -> task %p",
       dev, ntask);

   if ((flags & ISC_SOCKFLAG_IMMEDIATE) != 0)
    result = ISC_R_INPROGRESS;
   break;
  }

 case 130:
 case 128:
  if ((flags & ISC_SOCKFLAG_IMMEDIATE) == 0)
   send_senddone_event(sock, &dev);
  break;
 }

 if (have_lock)
  UNLOCK(&sock->lock);

 return (result);
}
