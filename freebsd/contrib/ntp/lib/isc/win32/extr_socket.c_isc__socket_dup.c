
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; int pf; int manager; } ;
typedef TYPE_1__ isc_socket_t ;
typedef int isc_result_t ;


 int ISC_R_NOTIMPLEMENTED ;
 int REQUIRE (int) ;
 int VALID_SOCKET (TYPE_1__*) ;
 int socket_create (int ,int ,int ,TYPE_1__**,TYPE_1__*) ;

isc_result_t
isc__socket_dup(isc_socket_t *sock, isc_socket_t **socketp) {
 REQUIRE(VALID_SOCKET(sock));
 REQUIRE(socketp != ((void*)0) && *socketp == ((void*)0));


 return (ISC_R_NOTIMPLEMENTED);




}
