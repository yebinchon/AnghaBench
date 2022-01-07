
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 char** debug_base_symbols ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int ) ;
 int symfile_objfile ;

__attribute__((used)) static CORE_ADDR
locate_base (void)
{
  struct minimal_symbol *msymbol;
  CORE_ADDR address = 0;
  char **symbolp;





  for (symbolp = debug_base_symbols; *symbolp != ((void*)0); symbolp++)
    {
      msymbol = lookup_minimal_symbol (*symbolp, ((void*)0), symfile_objfile);
      if ((msymbol != ((void*)0)) && (SYMBOL_VALUE_ADDRESS (msymbol) != 0))
 {
   address = SYMBOL_VALUE_ADDRESS (msymbol);
   return (address);
 }
    }
  return (0);
}
