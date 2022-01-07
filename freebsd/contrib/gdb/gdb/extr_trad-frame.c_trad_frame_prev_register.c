
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trad_frame_saved_reg {scalar_t__ addr; int realreg; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef scalar_t__ CORE_ADDR ;


 int error (char*,int ) ;
 int frame_register_unwind (struct frame_info*,int ,int*,int*,scalar_t__*,int*,void*) ;
 int gdbarch_register_name (struct gdbarch*,int) ;
 struct gdbarch* get_frame_arch (struct frame_info*) ;
 int get_frame_memory (struct frame_info*,scalar_t__,void*,int ) ;
 int lval_memory ;
 int not_lval ;
 int register_size (struct gdbarch*,int) ;
 int store_unsigned_integer (void*,int ,scalar_t__) ;
 scalar_t__ trad_frame_addr_p (struct trad_frame_saved_reg*,int) ;
 scalar_t__ trad_frame_realreg_p (struct trad_frame_saved_reg*,int) ;
 scalar_t__ trad_frame_value_p (struct trad_frame_saved_reg*,int) ;

void
trad_frame_prev_register (struct frame_info *next_frame,
     struct trad_frame_saved_reg this_saved_regs[],
     int regnum, int *optimizedp,
     enum lval_type *lvalp, CORE_ADDR *addrp,
     int *realregp, void *bufferp)
{
  struct gdbarch *gdbarch = get_frame_arch (next_frame);
  if (trad_frame_addr_p (this_saved_regs, regnum))
    {

      *optimizedp = 0;
      *lvalp = lval_memory;
      *addrp = this_saved_regs[regnum].addr;
      *realregp = -1;
      if (bufferp != ((void*)0))
 {

   get_frame_memory (next_frame, this_saved_regs[regnum].addr, bufferp,
       register_size (gdbarch, regnum));
 }
    }
  else if (trad_frame_realreg_p (this_saved_regs, regnum))
    {

      frame_register_unwind (next_frame, this_saved_regs[regnum].realreg,
        optimizedp, lvalp, addrp, realregp, bufferp);
    }
  else if (trad_frame_value_p (this_saved_regs, regnum))
    {

      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realregp = -1;
      if (bufferp != ((void*)0))
 store_unsigned_integer (bufferp, register_size (gdbarch, regnum),
    this_saved_regs[regnum].addr);
    }
  else
    {
      error ("Register %s not available",
      gdbarch_register_name (gdbarch, regnum));
    }
}
