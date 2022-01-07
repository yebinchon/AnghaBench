
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * nthreads; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELAXED ;
 int atomic_load_u (int *,int ) ;

unsigned
arena_nthreads_get(arena_t *arena, bool internal) {
 return atomic_load_u(&arena->nthreads[internal], ATOMIC_RELAXED);
}
