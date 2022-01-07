
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s390_unwind_cache {int func; int local_base; scalar_t__ frame_base; TYPE_1__* saved_regs; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int ULONGEST ;
struct TYPE_2__ {scalar_t__ addr; } ;
typedef scalar_t__ LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 size_t S390_PC_REGNUM ;
 size_t S390_RETADDR_REGNUM ;
 size_t S390_SP_REGNUM ;
 int frame_pc_unwind (struct frame_info*) ;
 int frame_unwind_register_unsigned (struct frame_info*,size_t) ;
 int gdbarch_ptr_bit (struct gdbarch*) ;
 struct gdbarch* get_frame_arch (struct frame_info*) ;
 scalar_t__ read_memory_unsigned_integer (int ,int) ;
 scalar_t__ safe_read_memory_integer (scalar_t__,int,scalar_t__*) ;

__attribute__((used)) static void
s390_backchain_frame_unwind_cache (struct frame_info *next_frame,
       struct s390_unwind_cache *info)
{
  struct gdbarch *gdbarch = get_frame_arch (next_frame);
  int word_size = gdbarch_ptr_bit (gdbarch) / 8;
  CORE_ADDR backchain;
  ULONGEST reg;
  LONGEST sp;


  reg = frame_unwind_register_unsigned (next_frame, S390_SP_REGNUM);
  backchain = read_memory_unsigned_integer (reg, word_size);





  if (backchain != 0
      && safe_read_memory_integer (backchain + 15*word_size, word_size, &sp)
      && (CORE_ADDR)sp == backchain)
    {



      info->saved_regs[S390_SP_REGNUM].addr = backchain + 15*word_size;
      info->saved_regs[S390_RETADDR_REGNUM].addr = backchain + 14*word_size;


      info->saved_regs[S390_PC_REGNUM] = info->saved_regs[S390_RETADDR_REGNUM];



      info->frame_base = backchain + 16*word_size + 32;
      info->local_base = reg;
    }

  info->func = frame_pc_unwind (next_frame);
}
