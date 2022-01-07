
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; int references; } ;
typedef TYPE_1__ isc_socket_t ;


 int CONSISTENT (TYPE_1__*) ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 int VALID_SOCKET (TYPE_1__*) ;

void
isc__socket_attach(isc_socket_t *sock, isc_socket_t **socketp) {
 REQUIRE(VALID_SOCKET(sock));
 REQUIRE(socketp != ((void*)0) && *socketp == ((void*)0));

 LOCK(&sock->lock);
 CONSISTENT(sock);
 sock->references++;
 UNLOCK(&sock->lock);

 *socketp = sock;
}
