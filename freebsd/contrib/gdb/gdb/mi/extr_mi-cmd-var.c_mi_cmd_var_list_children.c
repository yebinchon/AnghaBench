
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum print_values { ____Placeholder_print_values } print_values ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int PRINT_ALL_VALUES ;
 int PRINT_NO_VALUES ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 struct cleanup* make_cleanup_ui_out_list_begin_end (int ,char*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,char*) ;
 int mi_version (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int ui_out_field_int (int ,char*,int) ;
 int ui_out_field_string (int ,char*,char*) ;
 int uiout ;
 char* varobj_get_expression (struct varobj*) ;
 struct varobj* varobj_get_handle (char*) ;
 int varobj_get_num_children (struct varobj*) ;
 char* varobj_get_objname (struct varobj*) ;
 char* varobj_get_type (struct varobj*) ;
 char* varobj_get_value (struct varobj*) ;
 int varobj_list_children (struct varobj*,struct varobj***) ;
 int xfree (struct varobj**) ;

enum mi_cmd_result
mi_cmd_var_list_children (char *command, char **argv, int argc)
{
  struct varobj *var;
  struct varobj **childlist;
  struct varobj **cc;
  struct cleanup *cleanup_children;
  int numchild;
  char *type;
  enum print_values print_values;

  if (argc != 1 && argc != 2)
    error ("mi_cmd_var_list_children: Usage: [PRINT_VALUES] NAME");


  if (argc == 1) var = varobj_get_handle (argv[0]);
  else var = varobj_get_handle (argv[1]);
  if (var == ((void*)0))
    error ("Variable object not found");

  numchild = varobj_list_children (var, &childlist);
  ui_out_field_int (uiout, "numchild", numchild);
  if (argc == 2)
    if (strcmp (argv[0], "0") == 0
 || strcmp (argv[0], "--no-values") == 0)
      print_values = PRINT_NO_VALUES;
    else if (strcmp (argv[0], "1") == 0
      || strcmp (argv[0], "--all-values") == 0)
      print_values = PRINT_ALL_VALUES;
    else
     error ("Unknown value for PRINT_VALUES: must be: 0 or \"--no-values\", 1 or \"--all-values\"");
  else print_values = PRINT_NO_VALUES;

  if (numchild <= 0)
    return MI_CMD_DONE;

  if (mi_version (uiout) == 1)
    cleanup_children = make_cleanup_ui_out_tuple_begin_end (uiout, "children");
  else
    cleanup_children = make_cleanup_ui_out_list_begin_end (uiout, "children");
  cc = childlist;
  while (*cc != ((void*)0))
    {
      struct cleanup *cleanup_child;
      cleanup_child = make_cleanup_ui_out_tuple_begin_end (uiout, "child");
      ui_out_field_string (uiout, "name", varobj_get_objname (*cc));
      ui_out_field_string (uiout, "exp", varobj_get_expression (*cc));
      ui_out_field_int (uiout, "numchild", varobj_get_num_children (*cc));
      if (print_values)
 ui_out_field_string (uiout, "value", varobj_get_value (*cc));
      type = varobj_get_type (*cc);

      if (type)
 ui_out_field_string (uiout, "type", varobj_get_type (*cc));
      do_cleanups (cleanup_child);
      cc++;
    }
  do_cleanups (cleanup_children);
  xfree (childlist);
  return MI_CMD_DONE;
}
