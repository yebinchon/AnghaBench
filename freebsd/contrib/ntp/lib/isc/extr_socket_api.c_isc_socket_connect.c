
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_taskaction_t ;
typedef int isc_task_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_socket_t ;
typedef int isc_sockaddr_t ;
typedef int isc_result_t ;
struct TYPE_6__ {int (* connect ) (TYPE_2__*,int *,int *,int ,void const*) ;} ;


 int ISCAPI_SOCKET_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int *,int *,int ,void const*) ;

isc_result_t
isc_socket_connect(isc_socket_t *sock, isc_sockaddr_t *addr, isc_task_t *task,
     isc_taskaction_t action, const void *arg)
{
 REQUIRE(ISCAPI_SOCKET_VALID(sock));

 return (sock->methods->connect(sock, addr, task, action, arg));
}
