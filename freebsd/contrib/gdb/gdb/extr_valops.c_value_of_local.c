
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 int BLOCK_DICT (struct block*) ;
 struct block* SYMBOL_BLOCK_VALUE (struct symbol*) ;
 int VAR_DOMAIN ;
 scalar_t__ deprecated_selected_frame ;
 scalar_t__ dict_empty (int ) ;
 int error (char*,...) ;
 struct symbol* get_frame_function (scalar_t__) ;
 struct symbol* lookup_block_symbol (struct block*,char const*,int *,int ) ;
 struct value* read_var_value (struct symbol*,scalar_t__) ;

struct value *
value_of_local (const char *name, int complain)
{
  struct symbol *func, *sym;
  struct block *b;
  struct value * ret;

  if (deprecated_selected_frame == 0)
    {
      if (complain)
 error ("no frame selected");
      else
 return 0;
    }

  func = get_frame_function (deprecated_selected_frame);
  if (!func)
    {
      if (complain)
 error ("no `%s' in nameless context", name);
      else
 return 0;
    }

  b = SYMBOL_BLOCK_VALUE (func);
  if (dict_empty (BLOCK_DICT (b)))
    {
      if (complain)
 error ("no args, no `%s'", name);
      else
 return 0;
    }



  sym = lookup_block_symbol (b, name, ((void*)0), VAR_DOMAIN);
  if (sym == ((void*)0))
    {
      if (complain)
 error ("current stack frame does not contain a variable named `%s'", name);
      else
 return ((void*)0);
    }

  ret = read_var_value (sym, deprecated_selected_frame);
  if (ret == 0 && complain)
    error ("`%s' argument unreadable", name);
  return ret;
}
