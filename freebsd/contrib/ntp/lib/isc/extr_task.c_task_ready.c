
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int isc_task_t ;
typedef scalar_t__ isc_boolean_t ;
struct TYPE_7__ {scalar_t__ mode; int lock; int work_available; } ;
typedef TYPE_1__ isc__taskmgr_t ;
struct TYPE_8__ {scalar_t__ state; TYPE_1__* manager; } ;
typedef TYPE_2__ isc__task_t ;


 int LOCK (int *) ;
 int REQUIRE (int) ;
 int SIGNAL (int *) ;
 int UNLOCK (int *) ;
 int VALID_MANAGER (TYPE_1__*) ;
 int XTRACE (char*) ;
 scalar_t__ isc__task_privilege (int *) ;
 scalar_t__ isc_taskmgrmode_normal ;
 int push_readyq (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ task_state_ready ;

__attribute__((used)) static inline void
task_ready(isc__task_t *task) {
 isc__taskmgr_t *manager = task->manager;




 REQUIRE(VALID_MANAGER(manager));
 REQUIRE(task->state == task_state_ready);

 XTRACE("task_ready");

 LOCK(&manager->lock);
 push_readyq(manager, task);




 UNLOCK(&manager->lock);
}
