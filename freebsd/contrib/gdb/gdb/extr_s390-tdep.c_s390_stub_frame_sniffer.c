
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int bfd_byte ;
typedef int CORE_ADDR ;


 int S390_MAX_INSTR_SIZE ;
 int frame_pc_unwind (struct frame_info*) ;
 scalar_t__ in_plt_section (int ,int *) ;
 scalar_t__ s390_readinstruction (int *,int ) ;
 struct frame_unwind const s390_stub_frame_unwind ;

__attribute__((used)) static const struct frame_unwind *
s390_stub_frame_sniffer (struct frame_info *next_frame)
{
  CORE_ADDR pc = frame_pc_unwind (next_frame);
  bfd_byte insn[S390_MAX_INSTR_SIZE];




  if (in_plt_section (pc, ((void*)0))
      || s390_readinstruction (insn, pc) < 0)
    return &s390_stub_frame_unwind;
  return ((void*)0);
}
