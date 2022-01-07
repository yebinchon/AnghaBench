
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs6000_framedata {scalar_t__ lr_offset; } ;
struct gdbarch_tdep {int wordsize; scalar_t__ lr_frame_offset; int ppc_lr_regnum; } ;
struct frame_info {int dummy; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 scalar_t__ DEPRECATED_FRAME_CHAIN (struct frame_info*) ;
 scalar_t__ DEPRECATED_PC_IN_CALL_DUMMY (int ,scalar_t__,scalar_t__) ;
 int PC_REGNUM ;
 scalar_t__ SIGTRAMP_FRAME ;
 scalar_t__ SIG_FRAME_LR_OFFSET ;
 scalar_t__ SIG_FRAME_PC_OFFSET ;
 int current_gdbarch ;
 int deprecated_read_register_dummy (int ,scalar_t__,int ) ;
 int frame_unwind_unsigned_register (struct frame_info*,int ,int *) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 scalar_t__ get_frame_base (struct frame_info*) ;
 int get_frame_func (struct frame_info*) ;
 int get_frame_pc (struct frame_info*) ;
 scalar_t__ get_frame_type (struct frame_info*) ;
 struct frame_info* get_next_frame (struct frame_info*) ;
 int read_memory_addr (scalar_t__,int) ;
 int read_register (int ) ;
 int skip_prologue (int ,int ,struct rs6000_framedata*) ;

CORE_ADDR
rs6000_frame_saved_pc (struct frame_info *fi)
{
  CORE_ADDR func_start;
  struct rs6000_framedata fdata;
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  int wordsize = tdep->wordsize;

  if ((get_frame_type (fi) == SIGTRAMP_FRAME))
    return read_memory_addr (get_frame_base (fi) + SIG_FRAME_PC_OFFSET,
        wordsize);

  if (DEPRECATED_PC_IN_CALL_DUMMY (get_frame_pc (fi),
       get_frame_base (fi),
       get_frame_base (fi)))
    return deprecated_read_register_dummy (get_frame_pc (fi),
        get_frame_base (fi), PC_REGNUM);

  func_start = get_frame_func (fi);



  if (!func_start)
    return 0;

  (void) skip_prologue (func_start, get_frame_pc (fi), &fdata);

  if (fdata.lr_offset == 0 && get_next_frame (fi) != ((void*)0))
    {
      if ((get_frame_type (get_next_frame (fi)) == SIGTRAMP_FRAME))
 return read_memory_addr ((get_frame_base (get_next_frame (fi))
      + SIG_FRAME_LR_OFFSET),
     wordsize);
      else if (DEPRECATED_PC_IN_CALL_DUMMY (get_frame_pc (get_next_frame (fi)), 0, 0))



 {
   ULONGEST lr;
   frame_unwind_unsigned_register (get_next_frame (fi),
       tdep->ppc_lr_regnum, &lr);
   return lr;
 }
      else
 return read_memory_addr (DEPRECATED_FRAME_CHAIN (fi)
     + tdep->lr_frame_offset,
     wordsize);
    }

  if (fdata.lr_offset == 0)
    return read_register (gdbarch_tdep (current_gdbarch)->ppc_lr_regnum);

  return read_memory_addr (DEPRECATED_FRAME_CHAIN (fi) + fdata.lr_offset,
      wordsize);
}
