
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_task_t ;
typedef int isc_eventtype_t ;
struct TYPE_6__ {unsigned int (* purgeevents ) (TYPE_2__*,void*,int ,void*) ;} ;


 int ISCAPI_TASK_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 unsigned int stub1 (TYPE_2__*,void*,int ,void*) ;

unsigned int
isc_task_purge(isc_task_t *task, void *sender, isc_eventtype_t type, void *tag)
{
 REQUIRE(ISCAPI_TASK_VALID(task));

 return (task->methods->purgeevents(task, sender, type, tag));
}
