
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_core {int freg; int intreg; } ;
typedef int CORE_ADDR ;


 int supply_fpregset (int *) ;
 int supply_gregset (int *) ;

__attribute__((used)) static void
fetch_core_registers (char *core_reg_sect, unsigned core_reg_size,
        int which, CORE_ADDR ignore)
{
  struct md_core *core_reg = (struct md_core *) core_reg_sect;
  int regno;
  CORE_ADDR r_pc;

  supply_gregset (&core_reg->intreg);
  supply_fpregset (&core_reg->freg);
}
