
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fd; TYPE_1__* manager; } ;
typedef TYPE_2__ isc_socket_t ;
struct TYPE_5__ {int totalSockets; } ;


 scalar_t__ INVALID_SOCKET ;
 int InterlockedDecrement (int *) ;
 int REQUIRE (int ) ;
 int SOCK_CLOSED ;
 int _set_state (TYPE_2__*,int ) ;
 int closesocket (scalar_t__) ;

void
socket_close(isc_socket_t *sock) {

 REQUIRE(sock != ((void*)0));

 if (sock->fd != INVALID_SOCKET) {
  closesocket(sock->fd);
  sock->fd = INVALID_SOCKET;
  _set_state(sock, SOCK_CLOSED);
  InterlockedDecrement(&sock->manager->totalSockets);
 }
}
