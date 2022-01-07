
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_socket_t ;
struct TYPE_6__ {int (* detach ) (TYPE_2__**) ;} ;


 int ENSURE (int ) ;
 scalar_t__ ISCAPI_SOCKET_VALID (TYPE_2__*) ;
 int REQUIRE (int) ;
 int stub1 (TYPE_2__**) ;

void
isc_socket_detach(isc_socket_t **socketp) {
 REQUIRE(socketp != ((void*)0) && ISCAPI_SOCKET_VALID(*socketp));

 (*socketp)->methods->detach(socketp);

 ENSURE(*socketp == ((void*)0));
}
