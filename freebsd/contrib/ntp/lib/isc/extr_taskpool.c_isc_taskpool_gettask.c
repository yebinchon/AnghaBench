
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t isc_uint32_t ;
struct TYPE_3__ {size_t ntasks; int * tasks; } ;
typedef TYPE_1__ isc_taskpool_t ;
typedef int isc_task_t ;


 int isc_random_get (size_t*) ;
 int isc_task_attach (int ,int **) ;

void
isc_taskpool_gettask(isc_taskpool_t *pool, isc_task_t **targetp) {
 isc_uint32_t i;
 isc_random_get(&i);
 isc_task_attach(pool->tasks[i % pool->ntasks], targetp);
}
