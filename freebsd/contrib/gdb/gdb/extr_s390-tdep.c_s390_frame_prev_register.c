
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_unwind_cache {int saved_regs; } ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 struct s390_unwind_cache* s390_frame_unwind_cache (struct frame_info*,void**) ;
 int trad_frame_prev_register (struct frame_info*,int ,int,int*,int*,int *,int*,void*) ;

__attribute__((used)) static void
s390_frame_prev_register (struct frame_info *next_frame,
     void **this_prologue_cache,
     int regnum, int *optimizedp,
     enum lval_type *lvalp, CORE_ADDR *addrp,
     int *realnump, void *bufferp)
{
  struct s390_unwind_cache *info
    = s390_frame_unwind_cache (next_frame, this_prologue_cache);
  trad_frame_prev_register (next_frame, info->saved_regs, regnum,
                            optimizedp, lvalp, addrp, realnump, bufferp);
}
