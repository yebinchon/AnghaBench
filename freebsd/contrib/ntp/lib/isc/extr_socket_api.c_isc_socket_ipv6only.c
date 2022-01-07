
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_socket_t ;
typedef int isc_boolean_t ;
struct TYPE_6__ {int (* ipv6only ) (TYPE_2__*,int ) ;} ;


 int ISCAPI_SOCKET_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int ) ;

void
isc_socket_ipv6only(isc_socket_t *sock, isc_boolean_t yes) {
 REQUIRE(ISCAPI_SOCKET_VALID(sock));

 sock->methods->ipv6only(sock, yes);
}
