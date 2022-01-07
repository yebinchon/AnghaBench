
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_task_t ;
struct TYPE_6__ {int (* setname ) (TYPE_2__*,char const*,void*) ;} ;


 int ISCAPI_TASK_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,char const*,void*) ;

void
isc_task_setname(isc_task_t *task, const char *name, void *tag) {
 REQUIRE(ISCAPI_TASK_VALID(task));

 task->methods->setname(task, name, tag);
}
