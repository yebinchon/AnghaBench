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
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  uiout ; 
 int FUNC5 (struct varobj*,int /*<<< orphan*/ *,int) ; 
 struct varobj* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 

enum mi_cmd_result
FUNC9 (char *command, char **argv, int argc)
{
  char *name;
  char *expr;
  struct varobj *var;
  int numdel;
  int children_only_p = 0;
  struct cleanup *old_cleanups;

  if (argc < 1 || argc > 2)
    FUNC1 ("mi_cmd_var_delete: Usage: [-c] EXPRESSION.");

  name = FUNC8 (argv[0]);
  /* Add cleanup for name. Must be free_current_contents as
     name can be reallocated */
  old_cleanups = FUNC2 (free_current_contents, &name);

  /* If we have one single argument it cannot be '-c' or any string
     starting with '-'. */
  if (argc == 1)
    {
      if (FUNC3 (name, "-c") == 0)
	FUNC1 ("mi_cmd_var_delete: Missing required argument after '-c': variable object name");
      if (*name == '-')
	FUNC1 ("mi_cmd_var_delete: Illegal variable object name");
    }

  /* If we have 2 arguments they must be '-c' followed by a string
     which would be the variable name. */
  if (argc == 2)
    {
      expr = FUNC8 (argv[1]);
      if (FUNC3 (name, "-c") != 0)
	FUNC1 ("mi_cmd_var_delete: Invalid option.");
      children_only_p = 1;
      FUNC7 (name);
      name = FUNC8 (expr);
      FUNC7 (expr);
    }

  /* If we didn't error out, now NAME contains the name of the
     variable. */

  var = FUNC6 (name);

  if (var == NULL)
    FUNC1 ("mi_cmd_var_delete: Variable object not found.");

  numdel = FUNC5 (var, NULL, children_only_p);

  FUNC4 (uiout, "ndeleted", numdel);

  FUNC0 (old_cleanups);
  return MI_CMD_DONE;
}