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
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 
 struct varobj* FUNC5 (char*) ; 
 int FUNC6 (struct varobj***) ; 
 int /*<<< orphan*/  FUNC7 (struct varobj*) ; 
 int /*<<< orphan*/  FUNC8 (struct varobj**) ; 

enum mi_cmd_result
FUNC9 (char *command, char **argv, int argc)
{
  struct varobj *var;
  struct varobj **rootlist;
  struct varobj **cr;
  struct cleanup *cleanup;
  char *name;
  int nv;

  if (argc != 1)
    FUNC1 ("mi_cmd_var_update: Usage: NAME.");

  name = argv[0];

  /* Check if the parameter is a "*" which means that we want
     to update all variables */

  if ((*name == '*') && (*(name + 1) == '\0'))
    {
      nv = FUNC6 (&rootlist);
      if (FUNC4 (uiout) <= 1)
        cleanup = FUNC3 (uiout, "changelist");
      else
        cleanup = FUNC2 (uiout, "changelist");
      if (nv <= 0)
	{
	  FUNC0 (cleanup);
	  return MI_CMD_DONE;
	}
      cr = rootlist;
      while (*cr != NULL)
	{
	  FUNC7 (*cr);
	  cr++;
	}
      FUNC8 (rootlist);
      FUNC0 (cleanup);
    }
  else
    {
      /* Get varobj handle, if a valid var obj name was specified */
      var = FUNC5 (name);
      if (var == NULL)
	FUNC1 ("mi_cmd_var_update: Variable object not found");

      if (FUNC4 (uiout) <= 1)
        cleanup = FUNC3 (uiout, "changelist");
      else
        cleanup = FUNC2 (uiout, "changelist");
      FUNC7 (var);
      FUNC0 (cleanup);
    }
    return MI_CMD_DONE;
}