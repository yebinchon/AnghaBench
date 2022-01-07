
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int error (char*) ;
 int ui_out_field_string (int ,char*,char*) ;
 int uiout ;
 int varobj_get_attributes (struct varobj*) ;
 struct varobj* varobj_get_handle (char*) ;

enum mi_cmd_result
mi_cmd_var_show_attributes (char *command, char **argv, int argc)
{
  int attr;
  char *attstr;
  struct varobj *var;

  if (argc != 1)
    error ("mi_cmd_var_show_attributes: Usage: NAME.");


  var = varobj_get_handle (argv[0]);
  if (var == ((void*)0))
    error ("mi_cmd_var_show_attributes: Variable object not found");

  attr = varobj_get_attributes (var);

  if (attr & 0x00000001)
    attstr = "editable";
  else
    attstr = "noneditable";

  ui_out_field_string (uiout, "attr", attstr);
  return MI_CMD_DONE;
}
