
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct user_reg {struct value* (* read ) (struct frame_info*) ;} ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;


 int gdb_assert (int ) ;
 int gdbarch_num_pseudo_regs (struct gdbarch*) ;
 int gdbarch_num_regs (struct gdbarch*) ;
 struct gdbarch* get_frame_arch (struct frame_info*) ;
 struct value* stub1 (struct frame_info*) ;
 struct user_reg* usernum_to_user_reg (struct gdbarch*,int) ;

struct value *
value_of_user_reg (int regnum, struct frame_info *frame)
{
  struct gdbarch *gdbarch = get_frame_arch (frame);
  int maxregs = (gdbarch_num_regs (gdbarch)
   + gdbarch_num_pseudo_regs (gdbarch));
  struct user_reg *reg = usernum_to_user_reg (gdbarch, regnum - maxregs);
  gdb_assert (reg != ((void*)0));
  return reg->read (frame);
}
