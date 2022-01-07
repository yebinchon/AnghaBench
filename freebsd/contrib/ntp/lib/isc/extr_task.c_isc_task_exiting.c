
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_task_t ;
typedef int isc_boolean_t ;
typedef int isc__task_t ;


 int REQUIRE (int ) ;
 int TASK_SHUTTINGDOWN (int *) ;
 int VALID_TASK (int *) ;

isc_boolean_t
isc_task_exiting(isc_task_t *t) {
 isc__task_t *task = (isc__task_t *)t;

 REQUIRE(VALID_TASK(task));
 return (TASK_SHUTTINGDOWN(task));
}
