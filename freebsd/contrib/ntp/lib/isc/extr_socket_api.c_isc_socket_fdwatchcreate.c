
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_task_t ;
typedef int isc_sockfdwatch_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_socketmgr_t ;
typedef int isc_socket_t ;
typedef int isc_result_t ;
struct TYPE_6__ {int (* fdwatchcreate ) (TYPE_2__*,int,int,int ,void*,int *,int **) ;} ;


 int ISCAPI_SOCKETMGR_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int,int,int ,void*,int *,int **) ;

isc_result_t
isc_socket_fdwatchcreate(isc_socketmgr_t *manager, int fd, int flags,
    isc_sockfdwatch_t callback, void *cbarg,
    isc_task_t *task, isc_socket_t **socketp)
{
 REQUIRE(ISCAPI_SOCKETMGR_VALID(manager));

 return (manager->methods->fdwatchcreate(manager, fd, flags,
      callback, cbarg, task,
      socketp));
}
