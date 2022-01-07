
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum varobj_type { ____Placeholder_varobj_type } varobj_type ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
typedef int CORE_ADDR ;


 int MI_CMD_DONE ;
 int USE_CURRENT_FRAME ;
 int USE_SELECTED_FRAME ;
 int USE_SPECIFIED_FRAME ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*,char*,char*,int ,char*) ;
 int free_current_contents ;
 int gdb_stdlog ;
 int isalpha (char) ;
 struct cleanup* make_cleanup (int (*) (char*),...) ;
 int paddr (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int string_to_core_addr (char*) ;
 int ui_out_field_int (int ,char*,int ) ;
 int ui_out_field_string (int ,char*,char*) ;
 int uiout ;
 struct varobj* varobj_create (char*,char*,int ,int) ;
 char* varobj_gen_name () ;
 int varobj_get_num_children (struct varobj*) ;
 char* varobj_get_type (struct varobj*) ;
 scalar_t__ varobjdebug ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

enum mi_cmd_result
mi_cmd_var_create (char *command, char **argv, int argc)
{
  CORE_ADDR frameaddr = 0;
  struct varobj *var;
  char *name;
  char *frame;
  char *expr;
  char *type;
  struct cleanup *old_cleanups;
  enum varobj_type var_type;

  if (argc != 3)
    {



      error ("mi_cmd_var_create: Usage: NAME FRAME EXPRESSION.");
    }

  name = xstrdup (argv[0]);


  old_cleanups = make_cleanup (free_current_contents, &name);

  frame = xstrdup (argv[1]);
  old_cleanups = make_cleanup (xfree, frame);

  expr = xstrdup (argv[2]);

  if (strcmp (name, "-") == 0)
    {
      xfree (name);
      name = varobj_gen_name ();
    }
  else if (!isalpha (*name))
    error ("mi_cmd_var_create: name of object must begin with a letter");

  if (strcmp (frame, "*") == 0)
    var_type = USE_CURRENT_FRAME;
  else if (strcmp (frame, "@") == 0)
    var_type = USE_SELECTED_FRAME;
  else
    {
      var_type = USE_SPECIFIED_FRAME;
      frameaddr = string_to_core_addr (frame);
    }

  if (varobjdebug)
    fprintf_unfiltered (gdb_stdlog,
      "Name=\"%s\", Frame=\"%s\" (0x%s), Expression=\"%s\"\n",
   name, frame, paddr (frameaddr), expr);

  var = varobj_create (name, expr, frameaddr, var_type);

  if (var == ((void*)0))
    error ("mi_cmd_var_create: unable to create variable object");

  ui_out_field_string (uiout, "name", name);
  ui_out_field_int (uiout, "numchild", varobj_get_num_children (var));
  type = varobj_get_type (var);
  if (type == ((void*)0))
    ui_out_field_string (uiout, "type", "");
  else
    {
      ui_out_field_string (uiout, "type", type);
      xfree (type);
    }

  do_cleanups (old_cleanups);
  return MI_CMD_DONE;
}
