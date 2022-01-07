
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
typedef int isc_result_t ;
typedef int isc_region_t ;
struct TYPE_6__ {int (* recv ) (TYPE_2__*,int *,unsigned int,int *,int ,void const*) ;} ;


 int ISCAPI_SOCKET_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int *,unsigned int,int *,int ,void const*) ;

isc_result_t
isc_socket_recv(isc_socket_t *sock, isc_region_t *region, unsigned int minimum,
  isc_task_t *task, isc_taskaction_t action, const void *arg)
{
 REQUIRE(ISCAPI_SOCKET_VALID(sock));

 return (sock->methods->recv(sock, region, minimum, task, action, arg));
}
