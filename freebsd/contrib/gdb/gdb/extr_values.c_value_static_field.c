
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;


 int SET_FIELD_PHYSADDR (int ,int ) ;
 int * SYMBOL_BFD_SECTION (struct minimal_symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int TYPE_FIELD (struct type*,int) ;
 scalar_t__ TYPE_FIELD_STATIC_HAS_ADDR (struct type*,int) ;
 int TYPE_FIELD_STATIC_PHYSADDR (struct type*,int) ;
 char* TYPE_FIELD_STATIC_PHYSNAME (struct type*,int) ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 int VALUE_ADDRESS (struct value*) ;
 scalar_t__ VALUE_LVAL (struct value*) ;
 int VAR_DOMAIN ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 struct symbol* lookup_symbol (char*,int ,int ,int ,int *) ;
 scalar_t__ lval_memory ;
 struct value* read_var_value (struct symbol*,int *) ;
 scalar_t__ symbol_read_needs_frame (struct symbol*) ;
 struct value* value_at (int ,int ,int *) ;
 int warning (char*) ;

struct value *
value_static_field (struct type *type, int fieldno)
{
  struct value *retval;

  if (TYPE_FIELD_STATIC_HAS_ADDR (type, fieldno))
    {
      retval = value_at (TYPE_FIELD_TYPE (type, fieldno),
    TYPE_FIELD_STATIC_PHYSADDR (type, fieldno),
    ((void*)0));
    }
  else
    {
      char *phys_name = TYPE_FIELD_STATIC_PHYSNAME (type, fieldno);
      struct symbol *sym = lookup_symbol (phys_name, 0, VAR_DOMAIN, 0, ((void*)0));
      if (sym == ((void*)0))
 {


   struct minimal_symbol *msym = lookup_minimal_symbol (phys_name, ((void*)0), ((void*)0));
   if (!msym)
     return ((void*)0);
   else
     {
       retval = value_at (TYPE_FIELD_TYPE (type, fieldno),
     SYMBOL_VALUE_ADDRESS (msym),
     SYMBOL_BFD_SECTION (msym));
     }
 }
      else
 {


   if (symbol_read_needs_frame (sym))
     warning ("static field's value depends on the current "
       "frame - bad debug info?");
   retval = read_var_value (sym, ((void*)0));
  }
      if (retval && VALUE_LVAL (retval) == lval_memory)
 SET_FIELD_PHYSADDR (TYPE_FIELD (type, fieldno),
       VALUE_ADDRESS (retval));
    }
  return retval;
}
