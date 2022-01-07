
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_taskaction_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_task_t ;
typedef int isc_result_t ;
struct TYPE_6__ {int (* onshutdown ) (TYPE_2__*,int ,void const*) ;} ;


 int ISCAPI_TASK_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int ,void const*) ;

isc_result_t
isc_task_onshutdown(isc_task_t *task, isc_taskaction_t action, const void *arg)
{
 REQUIRE(ISCAPI_TASK_VALID(task));

 return (task->methods->onshutdown(task, action, arg));
}
