
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int S390_SP_REGNUM ;
 int frame_unwind_register_unsigned (struct frame_info*,int ) ;
 int gdbarch_addr_bits_remove (struct gdbarch*,int ) ;

__attribute__((used)) static CORE_ADDR
s390_unwind_sp (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  ULONGEST sp;
  sp = frame_unwind_register_unsigned (next_frame, S390_SP_REGNUM);
  return gdbarch_addr_bits_remove (gdbarch, sp);
}
