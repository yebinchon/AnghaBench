
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_reg {char const* name; } ;
struct gdbarch {int dummy; } ;


 int gdbarch_num_pseudo_regs (struct gdbarch*) ;
 int gdbarch_num_regs (struct gdbarch*) ;
 char const* gdbarch_register_name (struct gdbarch*,int) ;
 struct user_reg* usernum_to_user_reg (struct gdbarch*,int) ;

const char *
user_reg_map_regnum_to_name (struct gdbarch *gdbarch, int regnum)
{
  int maxregs = (gdbarch_num_regs (gdbarch)
   + gdbarch_num_pseudo_regs (gdbarch));
  if (regnum < 0)
    return ((void*)0);
  else if (regnum < maxregs)
    return gdbarch_register_name (gdbarch, regnum);
  else
    {
      struct user_reg *reg = usernum_to_user_reg (gdbarch, regnum - maxregs);
      if (reg == ((void*)0))
 return ((void*)0);
      else
 return reg->name;
    }
}
