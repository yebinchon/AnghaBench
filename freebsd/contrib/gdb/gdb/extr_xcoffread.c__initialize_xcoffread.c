
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TYPE_TARGET_TYPE ;


 int HOST_CHAR_BIT ;
 int TARGET_INT_BIT ;
 int TYPE_CODE_FUNC ;
 int TYPE_CODE_INT ;
 int add_symtab_fns (int *) ;
 int builtin_type_int ;
 int func_symbol_type ;
 void* init_type (int ,int,int ,char*,int *) ;
 void* var_symbol_type ;
 int xcoff_sym_fns ;

void
_initialize_xcoffread (void)
{
  add_symtab_fns (&xcoff_sym_fns);

  func_symbol_type = init_type (TYPE_CODE_FUNC, 1, 0,
    "<function, no debug info>", ((void*)0));
  TYPE_TARGET_TYPE (func_symbol_type) = builtin_type_int;
  var_symbol_type =
    init_type (TYPE_CODE_INT, TARGET_INT_BIT / HOST_CHAR_BIT, 0,
        "<variable, no debug info>", ((void*)0));
}
