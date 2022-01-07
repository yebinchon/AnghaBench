
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nactive; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELAXED ;
 int assert (int) ;
 int atomic_fetch_sub_zu (int *,size_t,int ) ;
 size_t atomic_load_zu (int *,int ) ;

__attribute__((used)) static void
arena_nactive_sub(arena_t *arena, size_t sub_pages) {
 assert(atomic_load_zu(&arena->nactive, ATOMIC_RELAXED) >= sub_pages);
 atomic_fetch_sub_zu(&arena->nactive, sub_pages, ATOMIC_RELAXED);
}
