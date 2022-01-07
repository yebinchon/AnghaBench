
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int tcache_t ;
typedef int arena_t ;


 int tcache_arena_associate (int *,int *,int *) ;
 int tcache_arena_dissociate (int *,int *) ;

void
tcache_arena_reassociate(tsdn_t *tsdn, tcache_t *tcache, arena_t *arena) {
 tcache_arena_dissociate(tsdn, tcache);
 tcache_arena_associate(tsdn, tcache, arena);
}
