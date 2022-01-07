
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_gdbarch_data (int ) ;
 int user_regs_data ;
 int user_regs_init ;

void
_initialize_user_regs (void)
{
  user_regs_data = register_gdbarch_data (user_regs_init);
}
