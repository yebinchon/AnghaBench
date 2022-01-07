
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;


 int SCM_EOL ;
 int VAR_DOMAIN ;
 int builtin_type_int ;
 int builtin_type_scm ;
 struct value* call_function_by_hand (struct value*,int,struct value**) ;
 int error (char*,char*) ;
 int * expression_context_block ;
 struct value* find_function_in_inferior (char*) ;
 scalar_t__ in_eval_c () ;
 struct symbol* lookup_symbol (char*,int *,int ,int*,struct symtab**) ;
 int strlen (char*) ;
 struct value* value_allocate_space_in_inferior (int) ;
 int value_as_long (struct value*) ;
 struct value* value_from_longest (int ,int) ;
 struct value* value_ind (struct value*) ;
 int value_logical_not (struct value*) ;
 struct value* value_of_variable (struct symbol*,int *) ;
 int write_memory (int ,char*,int) ;

__attribute__((used)) static struct value *
scm_lookup_name (char *str)
{
  struct value *args[3];
  int len = strlen (str);
  struct value *func;
  struct value *val;
  struct symbol *sym;
  args[0] = value_allocate_space_in_inferior (len);
  args[1] = value_from_longest (builtin_type_int, len);
  write_memory (value_as_long (args[0]), str, len);

  if (in_eval_c ()
      && (sym = lookup_symbol ("env",
          expression_context_block,
          VAR_DOMAIN, (int *) ((void*)0),
          (struct symtab **) ((void*)0))) != ((void*)0))
    args[2] = value_of_variable (sym, expression_context_block);
  else

    args[2] = value_from_longest (builtin_type_scm, SCM_EOL);

  func = find_function_in_inferior ("scm_lookup_cstr");
  val = call_function_by_hand (func, 3, args);
  if (!value_logical_not (val))
    return value_ind (val);

  sym = lookup_symbol (str,
         expression_context_block,
         VAR_DOMAIN, (int *) ((void*)0),
         (struct symtab **) ((void*)0));
  if (sym)
    return value_of_variable (sym, ((void*)0));
  error ("No symbol \"%s\" in current context.", str);
}
