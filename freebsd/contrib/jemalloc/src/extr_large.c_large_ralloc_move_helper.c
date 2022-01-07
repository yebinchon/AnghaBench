
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int arena_t ;


 size_t CACHELINE ;
 void* large_malloc (int *,int *,size_t,int) ;
 void* large_palloc (int *,int *,size_t,size_t,int) ;

__attribute__((used)) static void *
large_ralloc_move_helper(tsdn_t *tsdn, arena_t *arena, size_t usize,
    size_t alignment, bool zero) {
 if (alignment <= CACHELINE) {
  return large_malloc(tsdn, arena, usize, zero);
 }
 return large_palloc(tsdn, arena, usize, alignment, zero);
}
