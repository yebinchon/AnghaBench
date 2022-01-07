
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind_cache {int regcache; } ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 int current_gdbarch ;
 int lval_register ;
 int regcache_cooked_read (int ,int,void*) ;
 int register_offset_hack (int ,int) ;

__attribute__((used)) static void
sentinel_frame_prev_register (struct frame_info *next_frame,
         void **this_prologue_cache,
         int regnum, int *optimized,
         enum lval_type *lvalp, CORE_ADDR *addrp,
         int *realnum, void *bufferp)
{
  struct frame_unwind_cache *cache = *this_prologue_cache;


  *optimized = 0;
  *lvalp = lval_register;
  *addrp = register_offset_hack (current_gdbarch, regnum);
  *realnum = regnum;


  if (bufferp != ((void*)0))
    {




      regcache_cooked_read (cache->regcache, regnum, bufferp);
    }
}
