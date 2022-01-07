
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lock; int shutdown_ok; int socklist; scalar_t__ maxsocks; } ;
typedef TYPE_1__ isc__socketmgr_t ;
struct TYPE_10__ {int fd; int * connect_ev; int send_list; int recv_list; int accept_list; TYPE_1__* manager; } ;
typedef TYPE_2__ isc__socket_t ;


 int CREATION ;
 int INSIST (scalar_t__) ;
 scalar_t__ ISC_LIST_EMPTY (int ) ;
 int ISC_LIST_UNLINK (int ,TYPE_2__*,int ) ;
 int ISC_MSGSET_SOCKET ;
 int ISC_MSG_DESTROYING ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int SIGNAL (int *) ;
 int UNLOCK (int *) ;
 int closesocket (TYPE_1__*,TYPE_2__*,int) ;
 int free_socket (TYPE_2__**) ;
 int isc_msgcat ;
 int link ;
 int socket_log (TYPE_2__*,int *,int ,int ,int ,int ,char*) ;

__attribute__((used)) static void
destroy(isc__socket_t **sockp) {
 int fd;
 isc__socket_t *sock = *sockp;
 isc__socketmgr_t *manager = sock->manager;

 socket_log(sock, ((void*)0), CREATION, isc_msgcat, ISC_MSGSET_SOCKET,
     ISC_MSG_DESTROYING, "destroying");

 INSIST(ISC_LIST_EMPTY(sock->accept_list));
 INSIST(ISC_LIST_EMPTY(sock->recv_list));
 INSIST(ISC_LIST_EMPTY(sock->send_list));
 INSIST(sock->connect_ev == ((void*)0));
 REQUIRE(sock->fd == -1 || sock->fd < (int)manager->maxsocks);

 if (sock->fd >= 0) {
  fd = sock->fd;
  sock->fd = -1;
  closesocket(manager, sock, fd);
 }

 LOCK(&manager->lock);

 ISC_LIST_UNLINK(manager->socklist, sock, link);







 free_socket(sockp);

 UNLOCK(&manager->lock);
}
