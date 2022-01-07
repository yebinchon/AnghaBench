
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 int free_current_contents ;
 struct cleanup* make_cleanup (int ,char**) ;
 scalar_t__ strcmp (char*,char*) ;
 int ui_out_field_int (int ,char*,int) ;
 int uiout ;
 int varobj_delete (struct varobj*,int *,int) ;
 struct varobj* varobj_get_handle (char*) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

enum mi_cmd_result
mi_cmd_var_delete (char *command, char **argv, int argc)
{
  char *name;
  char *expr;
  struct varobj *var;
  int numdel;
  int children_only_p = 0;
  struct cleanup *old_cleanups;

  if (argc < 1 || argc > 2)
    error ("mi_cmd_var_delete: Usage: [-c] EXPRESSION.");

  name = xstrdup (argv[0]);


  old_cleanups = make_cleanup (free_current_contents, &name);



  if (argc == 1)
    {
      if (strcmp (name, "-c") == 0)
 error ("mi_cmd_var_delete: Missing required argument after '-c': variable object name");
      if (*name == '-')
 error ("mi_cmd_var_delete: Illegal variable object name");
    }



  if (argc == 2)
    {
      expr = xstrdup (argv[1]);
      if (strcmp (name, "-c") != 0)
 error ("mi_cmd_var_delete: Invalid option.");
      children_only_p = 1;
      xfree (name);
      name = xstrdup (expr);
      xfree (expr);
    }




  var = varobj_get_handle (name);

  if (var == ((void*)0))
    error ("mi_cmd_var_delete: Variable object not found.");

  numdel = varobj_delete (var, ((void*)0), children_only_p);

  ui_out_field_int (uiout, "ndeleted", numdel);

  do_cleanups (old_cleanups);
  return MI_CMD_DONE;
}
