#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct varobj {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  enum varobj_type { ____Placeholder_varobj_type } varobj_type ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int USE_CURRENT_FRAME ; 
 int USE_SELECTED_FRAME ; 
 int USE_SPECIFIED_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/  (*) (char*),...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  uiout ; 
 struct varobj* FUNC10 (char*,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct varobj*) ; 
 char* FUNC13 (struct varobj*) ; 
 scalar_t__ varobjdebug ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (char*) ; 

enum mi_cmd_result
FUNC16 (char *command, char **argv, int argc)
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
      /*      xasprintf (&mi_error_message,
         "mi_cmd_var_create: Usage: .");
         return MI_CMD_ERROR; */
      FUNC1 ("mi_cmd_var_create: Usage: NAME FRAME EXPRESSION.");
    }

  name = FUNC15 (argv[0]);
  /* Add cleanup for name. Must be free_current_contents as
     name can be reallocated */
  old_cleanups = FUNC4 (free_current_contents, &name);

  frame = FUNC15 (argv[1]);
  old_cleanups = FUNC4 (xfree, frame);

  expr = FUNC15 (argv[2]);

  if (FUNC6 (name, "-") == 0)
    {
      FUNC14 (name);
      name = FUNC11 ();
    }
  else if (!FUNC3 (*name))
    FUNC1 ("mi_cmd_var_create: name of object must begin with a letter");

  if (FUNC6 (frame, "*") == 0)
    var_type = USE_CURRENT_FRAME;
  else if (FUNC6 (frame, "@") == 0)
    var_type = USE_SELECTED_FRAME;  
  else
    {
      var_type = USE_SPECIFIED_FRAME;
      frameaddr = FUNC7 (frame);
    }

  if (varobjdebug)
    FUNC2 (gdb_stdlog,
		    "Name=\"%s\", Frame=\"%s\" (0x%s), Expression=\"%s\"\n",
			name, frame, FUNC5 (frameaddr), expr);

  var = FUNC10 (name, expr, frameaddr, var_type);

  if (var == NULL)
    FUNC1 ("mi_cmd_var_create: unable to create variable object");

  FUNC9 (uiout, "name", name);
  FUNC8 (uiout, "numchild", FUNC12 (var));
  type = FUNC13 (var);
  if (type == NULL)
    FUNC9 (uiout, "type", "");
  else
    {
      FUNC9 (uiout, "type", type);
      FUNC14 (type);
    }

  FUNC0 (old_cleanups);
  return MI_CMD_DONE;
}