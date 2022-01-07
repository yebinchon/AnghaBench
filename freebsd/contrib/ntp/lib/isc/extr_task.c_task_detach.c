
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_boolean_t ;
struct TYPE_3__ {scalar_t__ references; scalar_t__ state; int events; } ;
typedef TYPE_1__ isc__task_t ;


 int EMPTY (int ) ;
 int INSIST (int ) ;
 int ISC_FALSE ;
 int ISC_TRUE ;
 int REQUIRE (int) ;
 int XTRACE (char*) ;
 scalar_t__ task_state_idle ;
 scalar_t__ task_state_ready ;

__attribute__((used)) static inline isc_boolean_t
task_detach(isc__task_t *task) {





 REQUIRE(task->references > 0);

 XTRACE("detach");

 task->references--;
 if (task->references == 0 && task->state == task_state_idle) {
  INSIST(EMPTY(task->events));
  task->state = task_state_ready;
  return (ISC_TRUE);
 }

 return (ISC_FALSE);
}
