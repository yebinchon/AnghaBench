
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_sockettype_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_socket_t ;
struct TYPE_6__ {int (* gettype ) (TYPE_2__*) ;} ;


 int ISCAPI_SOCKET_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*) ;

isc_sockettype_t
isc_socket_gettype(isc_socket_t *sock) {
 REQUIRE(ISCAPI_SOCKET_VALID(sock));

 return (sock->methods->gettype(sock));
}
