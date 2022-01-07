
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_task_t ;
typedef int isc_boolean_t ;
struct TYPE_6__ {int (* setprivilege ) (TYPE_2__*,int ) ;} ;


 int ISCAPI_TASK_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int ) ;

void
isc_task_setprivilege(isc_task_t *task, isc_boolean_t priv) {
 REQUIRE(ISCAPI_TASK_VALID(task));

 task->methods->setprivilege(task, priv);
}
