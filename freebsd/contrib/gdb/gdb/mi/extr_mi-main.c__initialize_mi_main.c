
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_REGISTER_GDBARCH_SWAP (int ) ;
 int deprecated_register_gdbarch_swap (int *,int ,int ) ;
 int mi_setup_architecture_data ;
 int old_regs ;

void
_initialize_mi_main (void)
{
  DEPRECATED_REGISTER_GDBARCH_SWAP (old_regs);
  deprecated_register_gdbarch_swap (((void*)0), 0, mi_setup_architecture_data);
}
