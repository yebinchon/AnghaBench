
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc_frame_cache {int saved_regs; } ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 struct sparc_frame_cache* sparc32_sol2_sigtramp_frame_cache (struct frame_info*,void**) ;
 int trad_frame_prev_register (struct frame_info*,int ,int,int*,int*,int *,int*,void*) ;

__attribute__((used)) static void
sparc32_sol2_sigtramp_frame_prev_register (struct frame_info *next_frame,
        void **this_cache,
        int regnum, int *optimizedp,
        enum lval_type *lvalp,
        CORE_ADDR *addrp,
        int *realnump, void *valuep)
{
  struct sparc_frame_cache *cache =
    sparc32_sol2_sigtramp_frame_cache (next_frame, this_cache);

  trad_frame_prev_register (next_frame, cache->saved_regs, regnum,
       optimizedp, lvalp, addrp, realnump, valuep);
}
