
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ LOC_BLOCK ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int VAR_DOMAIN ;
 struct type* builtin_type_char ;
 int error (char*,...) ;
 struct type* lookup_function_type (struct type*) ;
 struct minimal_symbol* lookup_minimal_symbol (char const*,int *,int *) ;
 struct type* lookup_pointer_type (struct type*) ;
 struct symbol* lookup_symbol (char const*,int ,int ,int ,int *) ;
 int target_has_execution ;
 struct value* value_from_pointer (struct type*,int ) ;
 struct value* value_of_variable (struct symbol*,int *) ;

struct value *
find_function_in_inferior (const char *name)
{
  struct symbol *sym;
  sym = lookup_symbol (name, 0, VAR_DOMAIN, 0, ((void*)0));
  if (sym != ((void*)0))
    {
      if (SYMBOL_CLASS (sym) != LOC_BLOCK)
 {
   error ("\"%s\" exists in this program but is not a function.",
   name);
 }
      return value_of_variable (sym, ((void*)0));
    }
  else
    {
      struct minimal_symbol *msymbol = lookup_minimal_symbol (name, ((void*)0), ((void*)0));
      if (msymbol != ((void*)0))
 {
   struct type *type;
   CORE_ADDR maddr;
   type = lookup_pointer_type (builtin_type_char);
   type = lookup_function_type (type);
   type = lookup_pointer_type (type);
   maddr = SYMBOL_VALUE_ADDRESS (msymbol);
   return value_from_pointer (type, maddr);
 }
      else
 {
   if (!target_has_execution)
     error ("evaluation of this expression requires the target program to be active");
   else
     error ("evaluation of this expression requires the program to have a function \"%s\".", name);
 }
    }
}
