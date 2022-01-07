
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ready_priority_tasks; int ready_tasks; } ;
typedef TYPE_1__ isc__taskmgr_t ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_2__ isc__task_t ;


 int ENQUEUE (int ,TYPE_2__*,int ) ;
 int TASK_F_PRIVILEGED ;
 int ready_link ;
 int ready_priority_link ;

__attribute__((used)) static inline void
push_readyq(isc__taskmgr_t *manager, isc__task_t *task) {
 ENQUEUE(manager->ready_tasks, task, ready_link);
 if ((task->flags & TASK_F_PRIVILEGED) != 0)
  ENQUEUE(manager->ready_priority_tasks, task,
   ready_priority_link);
}
