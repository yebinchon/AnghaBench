
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pending_iocp; scalar_t__ pending_recv; scalar_t__ pending_send; scalar_t__ pending_accept; scalar_t__ references; int pending_connect; scalar_t__ fd; int lock; int accept_list; int send_list; int recv_list; } ;
typedef TYPE_1__ isc_socket_t ;


 int CONSISTENT (TYPE_1__*) ;
 int INSIST (int ) ;
 scalar_t__ INVALID_SOCKET ;
 int ISC_LIST_EMPTY (int ) ;
 int UNLOCK (int *) ;
 int VALID_SOCKET (TYPE_1__*) ;
 int free_socket (TYPE_1__**,int) ;

__attribute__((used)) static void
maybe_free_socket(isc_socket_t **socketp, int lineno) {
 isc_socket_t *sock = *socketp;
 *socketp = ((void*)0);

 INSIST(VALID_SOCKET(sock));
 CONSISTENT(sock);

 if (sock->pending_iocp > 0
     || sock->pending_recv > 0
     || sock->pending_send > 0
     || sock->pending_accept > 0
     || sock->references > 0
     || sock->pending_connect == 1
     || !ISC_LIST_EMPTY(sock->recv_list)
     || !ISC_LIST_EMPTY(sock->send_list)
     || !ISC_LIST_EMPTY(sock->accept_list)
     || sock->fd != INVALID_SOCKET) {
  UNLOCK(&sock->lock);
  return;
 }
 UNLOCK(&sock->lock);

 free_socket(&sock, lineno);
}
