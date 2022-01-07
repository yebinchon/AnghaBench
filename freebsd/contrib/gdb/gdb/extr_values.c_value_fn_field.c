
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct fn_field {int dummy; } ;
typedef int VALUE_ADDRESS ;


 int BLOCK_START (int ) ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 char* TYPE_FN_FIELD_PHYSNAME (struct fn_field*,int) ;
 struct type* TYPE_FN_FIELD_TYPE (struct fn_field*,int) ;
 struct type* VALUE_TYPE (struct value*) ;
 int VAR_DOMAIN ;
 struct value* allocate_value (struct type*) ;
 int gdb_assert (int ) ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 int lookup_pointer_type (struct type*) ;
 struct symbol* lookup_symbol (char*,int ,int ,int ,int *) ;
 int value_addr (struct value*) ;
 int value_cast (int ,int ) ;
 struct value* value_ind (int ) ;

struct value *
value_fn_field (struct value **arg1p, struct fn_field *f, int j, struct type *type,
  int offset)
{
  struct value *v;
  struct type *ftype = TYPE_FN_FIELD_TYPE (f, j);
  char *physname = TYPE_FN_FIELD_PHYSNAME (f, j);
  struct symbol *sym;
  struct minimal_symbol *msym;

  sym = lookup_symbol (physname, 0, VAR_DOMAIN, 0, ((void*)0));
  if (sym != ((void*)0))
    {
      msym = ((void*)0);
    }
  else
    {
      gdb_assert (sym == ((void*)0));
      msym = lookup_minimal_symbol (physname, ((void*)0), ((void*)0));
      if (msym == ((void*)0))
 return ((void*)0);
    }

  v = allocate_value (ftype);
  if (sym)
    {
      VALUE_ADDRESS (v) = BLOCK_START (SYMBOL_BLOCK_VALUE (sym));
    }
  else
    {
      VALUE_ADDRESS (v) = SYMBOL_VALUE_ADDRESS (msym);
    }

  if (arg1p)
    {
      if (type != VALUE_TYPE (*arg1p))
 *arg1p = value_ind (value_cast (lookup_pointer_type (type),
     value_addr (*arg1p)));




    }

  return v;
}
