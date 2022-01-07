
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int tcache_t ;
typedef int extent_t ;
typedef int arena_t ;


 size_t LARGE_MAXCLASS ;
 size_t LARGE_MINCLASS ;
 int assert (int) ;
 void* extent_addr_get (int *) ;
 size_t extent_usize_get (int *) ;
 int isdalloct (int *,void*,size_t,int *,int *,int) ;
 void* large_ralloc_move_helper (int *,int *,size_t,size_t,int) ;
 int large_ralloc_no_move (int *,int *,size_t,size_t,int) ;
 int memcpy (void*,void*,size_t) ;

void *
large_ralloc(tsdn_t *tsdn, arena_t *arena, extent_t *extent, size_t usize,
    size_t alignment, bool zero, tcache_t *tcache) {
 size_t oldusize = extent_usize_get(extent);


 assert(usize > 0 && usize <= LARGE_MAXCLASS);

 assert(oldusize >= LARGE_MINCLASS && usize >= LARGE_MINCLASS);


 if (!large_ralloc_no_move(tsdn, extent, usize, usize, zero)) {
  return extent_addr_get(extent);
 }






 void *ret = large_ralloc_move_helper(tsdn, arena, usize, alignment,
     zero);
 if (ret == ((void*)0)) {
  return ((void*)0);
 }

 size_t copysize = (usize < oldusize) ? usize : oldusize;
 memcpy(ret, extent_addr_get(extent), copysize);
 isdalloct(tsdn, extent_addr_get(extent), oldusize, tcache, ((void*)0), 1);
 return ret;
}
