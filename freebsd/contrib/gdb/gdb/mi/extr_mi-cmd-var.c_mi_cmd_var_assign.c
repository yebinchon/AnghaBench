
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int error (char*) ;
 int ui_out_field_string (int ,char*,int ) ;
 int uiout ;
 int varobj_get_attributes (struct varobj*) ;
 struct varobj* varobj_get_handle (char*) ;
 int varobj_get_value (struct varobj*) ;
 int varobj_set_value (struct varobj*,char*) ;
 char* xstrdup (char*) ;

enum mi_cmd_result
mi_cmd_var_assign (char *command, char **argv, int argc)
{
  struct varobj *var;
  char *expression;

  if (argc != 2)
    error ("mi_cmd_var_assign: Usage: NAME EXPRESSION.");


  var = varobj_get_handle (argv[0]);
  if (var == ((void*)0))
    error ("mi_cmd_var_assign: Variable object not found");


  if (!(varobj_get_attributes (var) & 0x00000001))
    error ("mi_cmd_var_assign: Variable object is not editable");

  expression = xstrdup (argv[1]);

  if (!varobj_set_value (var, expression))
    error ("mi_cmd_var_assign: Could not assign expression to varible object");

  ui_out_field_string (uiout, "value", varobj_get_value (var));
  return MI_CMD_DONE;
}
