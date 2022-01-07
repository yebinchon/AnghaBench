
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int ntasks; int ** tasks; } ;
typedef TYPE_1__ isc_taskpool_t ;
typedef int isc_boolean_t ;


 int REQUIRE (int ) ;
 int isc_task_setprivilege (int *,int ) ;

void
isc_taskpool_setprivilege(isc_taskpool_t *pool, isc_boolean_t priv) {
 unsigned int i;

 REQUIRE(pool != ((void*)0));

 for (i = 0; i < pool->ntasks; i++) {
  if (pool->tasks[i] != ((void*)0))
   isc_task_setprivilege(pool->tasks[i], priv);
 }
}
