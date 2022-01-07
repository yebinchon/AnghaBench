
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_out {int dummy; } ;
struct captured_value_struct_elt_args {char* name; int* static_memfuncp; char* err; struct value** result_ptr; struct value** args; struct value** argp; } ;
typedef enum gdb_rc { ____Placeholder_gdb_rc } gdb_rc ;


 int RETURN_MASK_ALL ;
 int catch_exceptions (struct ui_out*,int ,struct captured_value_struct_elt_args*,int *,int ) ;
 int do_captured_value_struct_elt ;

enum gdb_rc
gdb_value_struct_elt (struct ui_out *uiout, struct value **result, struct value **argp,
        struct value **args, char *name, int *static_memfuncp,
        char *err)
{
  struct captured_value_struct_elt_args cargs;
  cargs.argp = argp;
  cargs.args = args;
  cargs.name = name;
  cargs.static_memfuncp = static_memfuncp;
  cargs.err = err;
  cargs.result_ptr = result;
  return catch_exceptions (uiout, do_captured_value_struct_elt, &cargs,
      ((void*)0), RETURN_MASK_ALL);
}
