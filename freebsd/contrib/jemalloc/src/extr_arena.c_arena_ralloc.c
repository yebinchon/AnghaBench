
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int tcache_t ;
typedef int arena_t ;


 size_t LARGE_MAXCLASS ;
 size_t LARGE_MINCLASS ;
 size_t SMALL_MAXCLASS ;
 void* arena_ralloc_move_helper (int *,int *,size_t,size_t,int,int *) ;
 int arena_ralloc_no_move (int *,void*,size_t,size_t,int ,int) ;
 int iealloc (int *,void*) ;
 int isdalloct (int *,void*,size_t,int *,int *,int) ;
 void* large_ralloc (int *,int *,int ,size_t,size_t,int,int *) ;
 scalar_t__ likely (int) ;
 int memcpy (void*,void*,size_t) ;
 size_t sz_s2u (size_t) ;
 scalar_t__ unlikely (int) ;

void *
arena_ralloc(tsdn_t *tsdn, arena_t *arena, void *ptr, size_t oldsize,
    size_t size, size_t alignment, bool zero, tcache_t *tcache) {
 size_t usize = sz_s2u(size);
 if (unlikely(usize == 0 || size > LARGE_MAXCLASS)) {
  return ((void*)0);
 }

 if (likely(usize <= SMALL_MAXCLASS)) {

  if (!arena_ralloc_no_move(tsdn, ptr, oldsize, usize, 0, zero)) {
   return ptr;
  }
 }

 if (oldsize >= LARGE_MINCLASS && usize >= LARGE_MINCLASS) {
  return large_ralloc(tsdn, arena, iealloc(tsdn, ptr), usize,
      alignment, zero, tcache);
 }





 void *ret = arena_ralloc_move_helper(tsdn, arena, usize, alignment,
     zero, tcache);
 if (ret == ((void*)0)) {
  return ((void*)0);
 }






 size_t copysize = (usize < oldsize) ? usize : oldsize;
 memcpy(ret, ptr, copysize);
 isdalloct(tsdn, ptr, oldsize, tcache, ((void*)0), 1);
 return ret;
}
