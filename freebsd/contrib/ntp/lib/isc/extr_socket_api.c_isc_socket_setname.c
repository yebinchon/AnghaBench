
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void isc_socket_t ;


 int ISCAPI_SOCKET_VALID (void*) ;
 int REQUIRE (int ) ;
 int UNUSED (void*) ;

void
isc_socket_setname(isc_socket_t *socket, const char *name, void *tag) {
 REQUIRE(ISCAPI_SOCKET_VALID(socket));

 UNUSED(socket);
 UNUSED(name);
 UNUSED(tag);
}
