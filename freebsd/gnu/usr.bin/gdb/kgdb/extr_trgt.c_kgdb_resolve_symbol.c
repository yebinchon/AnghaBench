
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef int kvaddr_t ;


 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol (char const*,int *,int *) ;

__attribute__((used)) static int
kgdb_resolve_symbol(const char *name, kvaddr_t *kva)
{
 struct minimal_symbol *ms;

 ms = lookup_minimal_symbol (name, ((void*)0), ((void*)0));
 if (ms == ((void*)0))
  return (1);

 *kva = SYMBOL_VALUE_ADDRESS (ms);
 return (0);
}
