
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_boolean_t ;
struct TYPE_3__ {scalar_t__ mode; int ready_priority_tasks; int ready_tasks; } ;
typedef TYPE_1__ isc__taskmgr_t ;
typedef int isc__tasklist_t ;


 int EMPTY (int ) ;
 int ISC_TF (int ) ;
 scalar_t__ isc_taskmgrmode_normal ;

__attribute__((used)) static inline isc_boolean_t
empty_readyq(isc__taskmgr_t *manager) {
 isc__tasklist_t queue;

 if (manager->mode == isc_taskmgrmode_normal)
  queue = manager->ready_tasks;
 else
  queue = manager->ready_priority_tasks;

 return (ISC_TF(EMPTY(queue)));
}
