
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_reg {struct user_reg* next; } ;
struct gdbarch {int dummy; } ;
struct gdb_user_regs {struct user_reg* first; } ;


 struct gdb_user_regs* gdbarch_data (struct gdbarch*,int ) ;
 int user_regs_data ;

__attribute__((used)) static struct user_reg *
usernum_to_user_reg (struct gdbarch *gdbarch, int usernum)
{
  struct gdb_user_regs *regs = gdbarch_data (gdbarch, user_regs_data);
  struct user_reg *reg;
  for (reg = regs->first; reg != ((void*)0); reg = reg->next)
    {
      if (usernum == 0)
 return reg;
      usernum--;
    }
  return ((void*)0);
}
