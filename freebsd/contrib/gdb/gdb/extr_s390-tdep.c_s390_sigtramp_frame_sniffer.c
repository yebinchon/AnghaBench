
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int bfd_byte ;
typedef int CORE_ADDR ;


 int frame_pc_unwind (struct frame_info*) ;
 scalar_t__ read_memory_nobpt (int ,int*,int) ;
 struct frame_unwind const s390_sigtramp_frame_unwind ;

__attribute__((used)) static const struct frame_unwind *
s390_sigtramp_frame_sniffer (struct frame_info *next_frame)
{
  CORE_ADDR pc = frame_pc_unwind (next_frame);
  bfd_byte sigreturn[2];

  if (read_memory_nobpt (pc, sigreturn, 2))
    return ((void*)0);

  if (sigreturn[0] != 0x0a )
    return ((void*)0);

  if (sigreturn[1] != 119
      && sigreturn[1] != 173 )
    return ((void*)0);

  return &s390_sigtramp_frame_unwind;
}
