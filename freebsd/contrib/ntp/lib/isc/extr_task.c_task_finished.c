
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int mctx; int lock; int work_available; int tasks; } ;
typedef TYPE_2__ isc__taskmgr_t ;
struct TYPE_8__ {scalar_t__ magic; scalar_t__ impmagic; } ;
struct TYPE_10__ {scalar_t__ references; scalar_t__ state; TYPE_1__ common; int lock; int on_shutdown; int events; TYPE_2__* manager; } ;
typedef TYPE_3__ isc__task_t ;


 int BROADCAST (int *) ;
 int DESTROYLOCK (int *) ;
 int EMPTY (int ) ;
 scalar_t__ FINISHED (TYPE_2__*) ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLINK (int ,TYPE_3__*,int ) ;
 int UNLOCK (int *) ;
 int XTRACE (char*) ;
 int isc_mem_put (int ,TYPE_3__*,int) ;
 int link ;
 scalar_t__ task_state_done ;

__attribute__((used)) static void
task_finished(isc__task_t *task) {
 isc__taskmgr_t *manager = task->manager;

 REQUIRE(EMPTY(task->events));
 REQUIRE(EMPTY(task->on_shutdown));
 REQUIRE(task->references == 0);
 REQUIRE(task->state == task_state_done);

 XTRACE("task_finished");

 LOCK(&manager->lock);
 UNLINK(manager->tasks, task, link);
 UNLOCK(&manager->lock);

 DESTROYLOCK(&task->lock);
 task->common.impmagic = 0;
 task->common.magic = 0;
 isc_mem_put(manager->mctx, task, sizeof(*task));
}
