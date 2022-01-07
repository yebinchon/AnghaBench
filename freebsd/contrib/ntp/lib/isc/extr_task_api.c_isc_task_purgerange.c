
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_task_t ;
typedef int isc_eventtype_t ;
struct TYPE_6__ {unsigned int (* purgerange ) (TYPE_2__*,void*,int ,int ,void*) ;} ;


 int ISCAPI_TASK_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 unsigned int stub1 (TYPE_2__*,void*,int ,int ,void*) ;

unsigned int
isc_task_purgerange(isc_task_t *task, void *sender, isc_eventtype_t first,
      isc_eventtype_t last, void *tag)
{
 REQUIRE(ISCAPI_TASK_VALID(task));

 return (task->methods->purgerange(task, sender, first, last, tag));
}
