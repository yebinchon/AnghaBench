
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct minimal_symbol {int dummy; } ;
struct TYPE_2__ {int wordsize; } ;
typedef scalar_t__ CORE_ADDR ;


 int DEPRECATED_SYMBOL_NAME (struct minimal_symbol*) ;
 int current_gdbarch ;
 scalar_t__ find_solib_trampoline_target (scalar_t__) ;
 TYPE_1__* gdbarch_tdep (int ) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (scalar_t__) ;
 scalar_t__ read_memory_addr (unsigned int,int ) ;
 unsigned int read_memory_integer (scalar_t__,int) ;
 unsigned int read_register (int) ;
 scalar_t__ rs6000_in_solib_return_trampoline (scalar_t__,int ) ;

CORE_ADDR
rs6000_skip_trampoline_code (CORE_ADDR pc)
{
  unsigned int ii, op;
  int rel;
  CORE_ADDR solib_target_pc;
  struct minimal_symbol *msymbol;

  static unsigned trampoline_code[] =
  {
    0x800b0000,
    0x90410014,
    0x7c0903a6,
    0x804b0004,
    0x816b0008,
    0x4e800420,
    0x4e800020,
    0
  };


  msymbol = lookup_minimal_symbol_by_pc (pc);
  if (msymbol && rs6000_in_solib_return_trampoline (pc, DEPRECATED_SYMBOL_NAME (msymbol)))
    {

      op = read_memory_integer (pc + 8, 4);
      if ((op & 0xfc000003) == 0x48000000)
 {


   rel = ((int)(op << 6) >> 6);
   return pc + 8 + rel;
 }
    }


  solib_target_pc = find_solib_trampoline_target (pc);
  if (solib_target_pc)
    return solib_target_pc;

  for (ii = 0; trampoline_code[ii]; ++ii)
    {
      op = read_memory_integer (pc + (ii * 4), 4);
      if (op != trampoline_code[ii])
 return 0;
    }
  ii = read_register (11);
  pc = read_memory_addr (ii, gdbarch_tdep (current_gdbarch)->wordsize);
  return pc;
}
