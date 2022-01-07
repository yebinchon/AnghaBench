
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct in6_pktinfo {int dummy; } ;
typedef int isc_sockettype_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_11__ {int mctx; } ;
typedef TYPE_2__ isc__socketmgr_t ;
struct TYPE_10__ {scalar_t__ impmagic; scalar_t__ magic; } ;
struct TYPE_12__ {int fd; int recvcmsgbuflen; int sendcmsgbuflen; struct TYPE_12__* sendcmsgbuf; struct TYPE_12__* recvcmsgbuf; TYPE_1__ common; int writable_ev; int readable_ev; int lock; scalar_t__ bound; scalar_t__ connecting; scalar_t__ connected; scalar_t__ listener; scalar_t__ pending_accept; scalar_t__ pending_send; scalar_t__ pending_recv; int * connect_ev; int accept_list; int send_list; int recv_list; int * tag; int name; int * statsindex; scalar_t__ dupped; int type; TYPE_2__* manager; scalar_t__ references; } ;
typedef TYPE_3__ isc__socket_t ;
typedef int intev_t ;
typedef int ISC_SOCKADDR_LEN_T ;


 scalar_t__ ISCAPI_SOCKET_MAGIC ;
 int ISC_EVENTATTR_NOPURGE ;
 int ISC_EVENT_INIT (int *,int,int ,int *,int ,int *,TYPE_3__*,TYPE_3__*,int *,int *) ;
 int ISC_LINK_INIT (TYPE_3__*,int ) ;
 int ISC_LIST_INIT (int ) ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 int ISC_SOCKEVENT_INTR ;
 int ISC_SOCKEVENT_INTW ;
 scalar_t__ SOCKET_MAGIC ;
 scalar_t__ cmsg_space (int) ;
 void* isc_mem_get (int ,int) ;
 int isc_mem_put (int ,TYPE_3__*,int) ;
 scalar_t__ isc_mutex_init (int *) ;
 int link ;
 int memset (int ,int ,int) ;

__attribute__((used)) static isc_result_t
allocate_socket(isc__socketmgr_t *manager, isc_sockettype_t type,
  isc__socket_t **socketp)
{
 isc__socket_t *sock;
 isc_result_t result;
 ISC_SOCKADDR_LEN_T cmsgbuflen;

 sock = isc_mem_get(manager->mctx, sizeof(*sock));

 if (sock == ((void*)0))
  return (ISC_R_NOMEMORY);

 sock->common.magic = 0;
 sock->common.impmagic = 0;
 sock->references = 0;

 sock->manager = manager;
 sock->type = type;
 sock->fd = -1;
 sock->dupped = 0;
 sock->statsindex = ((void*)0);

 ISC_LINK_INIT(sock, link);

 sock->recvcmsgbuf = ((void*)0);
 sock->sendcmsgbuf = ((void*)0);




 cmsgbuflen = 0;






 sock->recvcmsgbuflen = cmsgbuflen;
 if (sock->recvcmsgbuflen != 0U) {
  sock->recvcmsgbuf = isc_mem_get(manager->mctx, cmsgbuflen);
  if (sock->recvcmsgbuf == ((void*)0)) {
   result = ISC_R_NOMEMORY;
   goto error;
  }
 }

 cmsgbuflen = 0;
 sock->sendcmsgbuflen = cmsgbuflen;
 if (sock->sendcmsgbuflen != 0U) {
  sock->sendcmsgbuf = isc_mem_get(manager->mctx, cmsgbuflen);
  if (sock->sendcmsgbuf == ((void*)0)) {
   result = ISC_R_NOMEMORY;
   goto error;
  }
 }

 memset(sock->name, 0, sizeof(sock->name));
 sock->tag = ((void*)0);




 ISC_LIST_INIT(sock->recv_list);
 ISC_LIST_INIT(sock->send_list);
 ISC_LIST_INIT(sock->accept_list);
 sock->connect_ev = ((void*)0);
 sock->pending_recv = 0;
 sock->pending_send = 0;
 sock->pending_accept = 0;
 sock->listener = 0;
 sock->connected = 0;
 sock->connecting = 0;
 sock->bound = 0;




 result = isc_mutex_init(&sock->lock);
 if (result != ISC_R_SUCCESS) {
  sock->common.magic = 0;
  sock->common.impmagic = 0;
  goto error;
 }




 ISC_EVENT_INIT(&sock->readable_ev, sizeof(intev_t),
         ISC_EVENTATTR_NOPURGE, ((void*)0), ISC_SOCKEVENT_INTR,
         ((void*)0), sock, sock, ((void*)0), ((void*)0));
 ISC_EVENT_INIT(&sock->writable_ev, sizeof(intev_t),
         ISC_EVENTATTR_NOPURGE, ((void*)0), ISC_SOCKEVENT_INTW,
         ((void*)0), sock, sock, ((void*)0), ((void*)0));

 sock->common.magic = ISCAPI_SOCKET_MAGIC;
 sock->common.impmagic = SOCKET_MAGIC;
 *socketp = sock;

 return (ISC_R_SUCCESS);

 error:
 if (sock->recvcmsgbuf != ((void*)0))
  isc_mem_put(manager->mctx, sock->recvcmsgbuf,
       sock->recvcmsgbuflen);
 if (sock->sendcmsgbuf != ((void*)0))
  isc_mem_put(manager->mctx, sock->sendcmsgbuf,
       sock->sendcmsgbuflen);
 isc_mem_put(manager->mctx, sock, sizeof(*sock));

 return (result);
}
