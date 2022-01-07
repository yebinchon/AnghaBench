
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_sockettype_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_socketmgr_t ;
typedef int isc_socket_t ;
typedef int isc_result_t ;
struct TYPE_6__ {int (* socketcreate ) (TYPE_2__*,int,int ,int **) ;} ;


 int ISCAPI_SOCKETMGR_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int,int ,int **) ;

isc_result_t
isc_socket_create(isc_socketmgr_t *manager, int pf, isc_sockettype_t type,
    isc_socket_t **socketp)
{
 REQUIRE(ISCAPI_SOCKETMGR_VALID(manager));

 return (manager->methods->socketcreate(manager, pf, type, socketp));
}
