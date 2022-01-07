
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_sockettype_t ;
typedef int isc_socketmgr_t ;
typedef int isc_socket_t ;
typedef int isc_result_t ;


 int socket_create (int *,int,int ,int **,int *) ;

isc_result_t
isc__socket_create(isc_socketmgr_t *manager, int pf, isc_sockettype_t type,
     isc_socket_t **socketp)
{
 return (socket_create(manager, pf, type, socketp, ((void*)0)));
}
