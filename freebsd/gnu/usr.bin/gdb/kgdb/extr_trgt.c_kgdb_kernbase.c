
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ KERNBASE ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;

__attribute__((used)) static CORE_ADDR
kgdb_kernbase (void)
{
 static CORE_ADDR kernbase;
 struct minimal_symbol *sym;

 if (kernbase == 0) {
  sym = lookup_minimal_symbol ("kernbase", ((void*)0), ((void*)0));
  if (sym == ((void*)0)) {
   kernbase = KERNBASE;
  } else {
   kernbase = SYMBOL_VALUE_ADDRESS (sym);
  }
 }
 return kernbase;
}
