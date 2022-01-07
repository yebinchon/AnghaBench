
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int pc_regnum; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int frame_unwind_register_unsigned (struct frame_info*,int ) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;

__attribute__((used)) static CORE_ADDR
sparc_unwind_pc (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);
  return frame_unwind_register_unsigned (next_frame, tdep->pc_regnum);
}
