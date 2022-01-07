
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct frame_id {int dummy; } ;


 scalar_t__ DEPRECATED_CALL_DUMMY_HAS_COMPLETED (int ,int ,int ) ;
 scalar_t__ DUMMY_FRAME ;
 scalar_t__ RETURN_VALUE_REGISTER_CONVENTION ;
 int STORE_RETURN_VALUE (struct type*,int *,int *) ;
 int SYMBOL_PRINT_NAME (struct symbol*) ;
 int SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_CODE_UNION ;
 scalar_t__ TYPE_CODE_VOID ;
 struct type* TYPE_TARGET_TYPE (int ) ;
 int * VALUE_CONTENTS (struct value*) ;
 scalar_t__ VALUE_LAZY (struct value*) ;
 struct type* VALUE_TYPE (struct value*) ;
 struct type* builtin_type_int ;
 int current_gdbarch ;
 int * current_regcache ;
 int error (char*) ;
 int frame_command (char*,int) ;
 int frame_id_eq (struct frame_id,struct frame_id) ;
 scalar_t__ frame_id_inner (struct frame_id,struct frame_id) ;
 int frame_pop (int ) ;
 int gdb_assert (int) ;
 scalar_t__ gdbarch_return_value (int ,struct type*,int *,int *,int *) ;
 int gdbarch_return_value_p (int ) ;
 int get_current_frame () ;
 int get_frame_base (int ) ;
 struct symbol* get_frame_function (int ) ;
 struct frame_id get_frame_id (int ) ;
 scalar_t__ get_frame_type (int ) ;
 int get_selected_frame () ;
 struct value* parse_and_eval (char*) ;
 int query (char*,char const*,...) ;
 int read_pc () ;
 int read_sp () ;
 int select_frame_command (char*,int ) ;
 int target_has_registers ;
 scalar_t__ using_struct_return (struct type*,int ) ;
 struct value* value_cast (struct type*,struct value*) ;
 int value_fetch_lazy (struct value*) ;

void
return_command (char *retval_exp, int from_tty)
{
  struct symbol *thisfun;
  struct value *return_value = ((void*)0);
  const char *query_prefix = "";





  if (!target_has_registers)
    error ("No selected frame.");
  thisfun = get_frame_function (get_selected_frame ());





  if (retval_exp)
    {
      struct type *return_type = ((void*)0);



      return_value = parse_and_eval (retval_exp);



      if (thisfun != ((void*)0))
 return_type = TYPE_TARGET_TYPE (SYMBOL_TYPE (thisfun));
      if (return_type == ((void*)0))
 return_type = builtin_type_int;
      return_value = value_cast (return_type, return_value);



      if (VALUE_LAZY (return_value))
 value_fetch_lazy (return_value);

      if (TYPE_CODE (return_type) == TYPE_CODE_VOID)





 return_value = ((void*)0);



      else if (!gdbarch_return_value_p (current_gdbarch)
        && (TYPE_CODE (return_type) == TYPE_CODE_STRUCT
     || TYPE_CODE (return_type) == TYPE_CODE_UNION))
 {




   query_prefix = "A structure or union return type is not supported by this architecture.\nIf you continue, the return value that you specified will be ignored.\n";


   return_value = ((void*)0);
 }
      else if (using_struct_return (return_type, 0))
 {
   query_prefix = "The location at which to store the function's return value is unknown.\nIf you continue, the return value that you specified will be ignored.\n";


   return_value = ((void*)0);
 }
    }




  if (from_tty)
    {
      int confirmed;
      if (thisfun == ((void*)0))
 confirmed = query ("%sMake selected stack frame return now? ",
      query_prefix);
      else
 confirmed = query ("%sMake %s return now? ", query_prefix,
      SYMBOL_PRINT_NAME (thisfun));
      if (!confirmed)
 error ("Not confirmed");
    }







  {
    struct frame_id selected_id = get_frame_id (get_selected_frame ());
    while (!frame_id_eq (selected_id, get_frame_id (get_current_frame ())))
      {
 if (frame_id_inner (selected_id, get_frame_id (get_current_frame ())))


   error ("Problem while popping stack frames (corrupt stack?)");
 frame_pop (get_current_frame ());
      }
  }



  frame_pop (get_current_frame ());


  if (return_value != ((void*)0))
    {
      struct type *return_type = VALUE_TYPE (return_value);
      if (!gdbarch_return_value_p (current_gdbarch))
 {
   STORE_RETURN_VALUE (return_type, current_regcache,
         VALUE_CONTENTS (return_value));
 }




      else
 {
   gdb_assert (gdbarch_return_value (current_gdbarch, return_type,
         ((void*)0), ((void*)0), ((void*)0))
        == RETURN_VALUE_REGISTER_CONVENTION);
   gdbarch_return_value (current_gdbarch, return_type,
    current_regcache, ((void*)0) ,
    VALUE_CONTENTS (return_value) );
 }
    }
  if (get_frame_type (get_current_frame ()) == DUMMY_FRAME)
    frame_pop (get_current_frame ());



  if (from_tty)
    frame_command ("0", 1);
  else
    select_frame_command ("0", 0);
}
