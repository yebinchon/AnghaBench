
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ntasks; } ;
typedef TYPE_1__ isc_taskpool_t ;


 int REQUIRE (int ) ;

int
isc_taskpool_size(isc_taskpool_t *pool) {
 REQUIRE(pool != ((void*)0));
 return (pool->ntasks);
}
