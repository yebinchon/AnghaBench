
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int DEPRECATED_SYMBOL_NAME (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (scalar_t__) ;
 scalar_t__ strcmp (int ,char*) ;
 int target_read_memory (scalar_t__,char*,int) ;

int
kgdb_trgt_pc_fixup(CORE_ADDR *pc)
{

 struct minimal_symbol *msymbol;
 int valpc;







 msymbol = lookup_minimal_symbol_by_pc(*pc);
 if (msymbol != ((void*)0)) {
  if (strcmp(DEPRECATED_SYMBOL_NAME(msymbol), "exception_exit") == 0)
   return (0);
  if (strcmp(DEPRECATED_SYMBOL_NAME(msymbol), "swi_exit") == 0)
   return (0);
 }







 target_read_memory(*pc - 4, (char*)&valpc, 4);
 if (valpc == 0xe7ffffff) {
  *pc = *pc - 8;
  return (0);
 }
 if ((valpc & 0xff000000) == 0xea000000) {
  target_read_memory(*pc - 8, (char*)&valpc, 4);
  if (valpc == 0xe1a0e00f) {
   *pc -= 8;
   return (0);
  }
 }

 return (-1);
}
