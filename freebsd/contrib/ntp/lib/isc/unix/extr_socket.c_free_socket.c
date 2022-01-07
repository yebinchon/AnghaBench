
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ impmagic; scalar_t__ magic; } ;
struct TYPE_10__ {scalar_t__ references; int recvcmsgbuflen; int sendcmsgbuflen; TYPE_2__* manager; int lock; TYPE_1__ common; struct TYPE_10__* sendcmsgbuf; struct TYPE_10__* recvcmsgbuf; int accept_list; int send_list; int recv_list; int pending_accept; int pending_send; int pending_recv; int connecting; } ;
typedef TYPE_3__ isc__socket_t ;
struct TYPE_9__ {int mctx; } ;


 int DESTROYLOCK (int *) ;
 int INSIST (int) ;
 int ISC_LINK_LINKED (TYPE_3__*,int ) ;
 int ISC_LIST_EMPTY (int ) ;
 int VALID_SOCKET (TYPE_3__*) ;
 int isc_mem_put (int ,TYPE_3__*,int) ;
 int link ;

__attribute__((used)) static void
free_socket(isc__socket_t **socketp) {
 isc__socket_t *sock = *socketp;

 INSIST(sock->references == 0);
 INSIST(VALID_SOCKET(sock));
 INSIST(!sock->connecting);
 INSIST(!sock->pending_recv);
 INSIST(!sock->pending_send);
 INSIST(!sock->pending_accept);
 INSIST(ISC_LIST_EMPTY(sock->recv_list));
 INSIST(ISC_LIST_EMPTY(sock->send_list));
 INSIST(ISC_LIST_EMPTY(sock->accept_list));
 INSIST(!ISC_LINK_LINKED(sock, link));

 if (sock->recvcmsgbuf != ((void*)0))
  isc_mem_put(sock->manager->mctx, sock->recvcmsgbuf,
       sock->recvcmsgbuflen);
 if (sock->sendcmsgbuf != ((void*)0))
  isc_mem_put(sock->manager->mctx, sock->sendcmsgbuf,
       sock->sendcmsgbuflen);

 sock->common.magic = 0;
 sock->common.impmagic = 0;

 DESTROYLOCK(&sock->lock);

 isc_mem_put(sock->manager->mctx, sock, sizeof(*sock));

 *socketp = ((void*)0);
}
