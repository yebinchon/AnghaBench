
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; int ready_priority_tasks; int ready_tasks; } ;
typedef TYPE_1__ isc__taskmgr_t ;
typedef int isc__task_t ;


 int DEQUEUE (int ,int *,int ) ;
 int * HEAD (int ) ;
 scalar_t__ ISC_LINK_LINKED (int *,int ) ;
 scalar_t__ isc_taskmgrmode_normal ;
 int ready_link ;
 int ready_priority_link ;

__attribute__((used)) static inline isc__task_t *
pop_readyq(isc__taskmgr_t *manager) {
 isc__task_t *task;

 if (manager->mode == isc_taskmgrmode_normal)
  task = HEAD(manager->ready_tasks);
 else
  task = HEAD(manager->ready_priority_tasks);

 if (task != ((void*)0)) {
  DEQUEUE(manager->ready_tasks, task, ready_link);
  if (ISC_LINK_LINKED(task, ready_priority_link))
   DEQUEUE(manager->ready_priority_tasks, task,
    ready_priority_link);
 }

 return (task);
}
