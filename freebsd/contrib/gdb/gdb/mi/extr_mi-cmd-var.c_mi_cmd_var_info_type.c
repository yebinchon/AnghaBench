
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
 struct varobj* varobj_get_handle (char*) ;
 int varobj_get_type (struct varobj*) ;

enum mi_cmd_result
mi_cmd_var_info_type (char *command, char **argv, int argc)
{
  struct varobj *var;

  if (argc != 1)
    error ("mi_cmd_var_info_type: Usage: NAME.");


  var = varobj_get_handle (argv[0]);
  if (var == ((void*)0))
    error ("mi_cmd_var_info_type: Variable object not found");

  ui_out_field_string (uiout, "type", varobj_get_type (var));
  return MI_CMD_DONE;
}
