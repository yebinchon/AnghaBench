
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s390_unwind_cache {scalar_t__ func; scalar_t__ local_base; scalar_t__ frame_base; TYPE_1__* saved_regs; } ;
struct s390_prologue_data {int gpr_size; scalar_t__ fpr_size; struct prologue_value* spill; struct prologue_value* gpr; } ;
struct prologue_value {scalar_t__ kind; size_t reg; scalar_t__ k; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int data ;
typedef scalar_t__ ULONGEST ;
struct TYPE_2__ {size_t realreg; scalar_t__ addr; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ NORMAL_FRAME ;
 int S390_FRAME_REGNUM ;
 int S390_NUM_SPILL_SLOTS ;
 size_t S390_PC_REGNUM ;
 size_t S390_R0_REGNUM ;
 size_t S390_RETADDR_REGNUM ;
 size_t S390_SP_REGNUM ;
 scalar_t__ frame_func_unwind (struct frame_info*) ;
 scalar_t__ frame_pc_unwind (struct frame_info*) ;
 scalar_t__ frame_relative_level (struct frame_info*) ;
 scalar_t__ frame_unwind_register_unsigned (struct frame_info*,int) ;
 scalar_t__ gdbarch_addr_bits_remove (struct gdbarch*,scalar_t__) ;
 int gdbarch_ptr_bit (struct gdbarch*) ;
 struct gdbarch* get_frame_arch (struct frame_info*) ;
 scalar_t__ get_frame_type (struct frame_info*) ;
 scalar_t__ get_pc_function_start (scalar_t__) ;
 int memset (struct s390_prologue_data*,int ,int) ;
 scalar_t__ pv_is_identical (struct prologue_value*,struct prologue_value*) ;
 scalar_t__ pv_register ;
 scalar_t__ s390_analyze_prologue (struct gdbarch*,scalar_t__,scalar_t__,struct s390_prologue_data*) ;
 scalar_t__ s390_in_function_epilogue_p (struct gdbarch*,scalar_t__) ;
 int trad_frame_addr_p (TYPE_1__*,size_t) ;

__attribute__((used)) static int
s390_prologue_frame_unwind_cache (struct frame_info *next_frame,
      struct s390_unwind_cache *info)
{
  struct gdbarch *gdbarch = get_frame_arch (next_frame);
  int word_size = gdbarch_ptr_bit (gdbarch) / 8;
  struct s390_prologue_data data;
  struct prologue_value *fp = &data.gpr[S390_FRAME_REGNUM - S390_R0_REGNUM];
  struct prologue_value *sp = &data.gpr[S390_SP_REGNUM - S390_R0_REGNUM];
  int slot_num;
  CORE_ADDR slot_addr;
  CORE_ADDR func;
  CORE_ADDR result;
  ULONGEST reg;
  CORE_ADDR prev_sp;
  int frame_pointer;
  int size;





  func = frame_func_unwind (next_frame);
  if (!func)
    return 0;


  result = s390_analyze_prologue (gdbarch, func,
      frame_pc_unwind (next_frame), &data);
  if (!result)
    return 0;




  if (sp->kind != pv_register || sp->reg != S390_SP_REGNUM)
    return 0;





  if (sp->k == 0)
    {



      if (get_frame_type (next_frame) == NORMAL_FRAME


   && frame_relative_level (next_frame) >= 0)
 return 0;



      reg = frame_unwind_register_unsigned (next_frame, S390_RETADDR_REGNUM);
      reg = gdbarch_addr_bits_remove (gdbarch, reg) - 1;
      if (get_pc_function_start (reg) == func)
 {







   struct s390_prologue_data data2;
   struct prologue_value *sp = &data2.gpr[S390_SP_REGNUM - S390_R0_REGNUM];

   if (!(s390_analyze_prologue (gdbarch, func, (CORE_ADDR)-1, &data2)
         && sp->kind == pv_register
         && sp->reg == S390_SP_REGNUM
         && sp->k != 0))
     return 0;
 }
    }



  size = -sp->k;





  if (pv_is_identical (sp, fp))
    frame_pointer = S390_FRAME_REGNUM;
  else
    frame_pointer = S390_SP_REGNUM;





  if (size > 0
      && (get_frame_type (next_frame) != NORMAL_FRAME
   || frame_relative_level (next_frame) < 0))
    {


      if (s390_in_function_epilogue_p (gdbarch, frame_pc_unwind (next_frame)))
 {
   memset (&data, 0, sizeof (data));
   size = 0;
   frame_pointer = S390_SP_REGNUM;
 }
    }





  prev_sp = frame_unwind_register_unsigned (next_frame, frame_pointer) + size;






  for (slot_num = 0, slot_addr = prev_sp + 2 * data.gpr_size;
       slot_num < 14;
       slot_num++, slot_addr += data.gpr_size)
    {
      struct prologue_value *slot = &data.spill[slot_num];

      if (slot->kind == pv_register
          && slot->k == 0)
        info->saved_regs[slot->reg].addr = slot_addr;
    }


  for (slot_num = 14, slot_addr = prev_sp + 16 * data.gpr_size;
       slot_num < S390_NUM_SPILL_SLOTS;
       slot_num++, slot_addr += data.fpr_size)
    {
      struct prologue_value *slot = &data.spill[slot_num];

      if (slot->kind == pv_register
          && slot->k == 0)
        info->saved_regs[slot->reg].addr = slot_addr;
    }


  info->saved_regs[S390_PC_REGNUM] = info->saved_regs[S390_RETADDR_REGNUM];





  if (size == 0
      && !trad_frame_addr_p (info->saved_regs, S390_PC_REGNUM))
    {
      info->saved_regs[S390_PC_REGNUM].realreg = S390_RETADDR_REGNUM;
    }





  if (size > 0)
    {
      if (!trad_frame_addr_p (info->saved_regs, S390_SP_REGNUM)
   || !trad_frame_addr_p (info->saved_regs, S390_PC_REGNUM))
 prev_sp = -1;
    }



  if (prev_sp != -1)
    {
      info->frame_base = prev_sp + 16*word_size + 32;
      info->local_base = prev_sp - size;
    }

  info->func = func;
  return 1;
}
