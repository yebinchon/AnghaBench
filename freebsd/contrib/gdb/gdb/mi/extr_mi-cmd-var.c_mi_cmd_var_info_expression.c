
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
typedef enum varobj_languages { ____Placeholder_varobj_languages } varobj_languages ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int error (char*) ;
 int ui_out_field_string (int ,char*,int ) ;
 int uiout ;
 int varobj_get_expression (struct varobj*) ;
 struct varobj* varobj_get_handle (char*) ;
 int varobj_get_language (struct varobj*) ;
 int * varobj_language_string ;

enum mi_cmd_result
mi_cmd_var_info_expression (char *command, char **argv, int argc)
{
  enum varobj_languages lang;
  struct varobj *var;

  if (argc != 1)
    error ("mi_cmd_var_info_expression: Usage: NAME.");


  var = varobj_get_handle (argv[0]);
  if (var == ((void*)0))
    error ("mi_cmd_var_info_expression: Variable object not found");

  lang = varobj_get_language (var);

  ui_out_field_string (uiout, "lang", varobj_language_string[(int) lang]);
  ui_out_field_string (uiout, "exp", varobj_get_expression (var));
  return MI_CMD_DONE;
}
