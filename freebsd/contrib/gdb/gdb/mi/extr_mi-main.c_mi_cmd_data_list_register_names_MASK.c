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
struct cleanup {int dummy; } ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int MI_CMD_ERROR ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 char* FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mi_error_message ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

enum mi_cmd_result
FUNC6 (char *command, char **argv, int argc)
{
  int regnum, numregs;
  int i;
  struct cleanup *cleanup;

  /* Note that the test for a valid register must include checking the
     REGISTER_NAME because NUM_REGS may be allocated for the union of
     the register sets within a family of related processors.  In this
     case, some entries of REGISTER_NAME will change depending upon
     the particular processor being debugged.  */

  numregs = NUM_REGS + NUM_PSEUDO_REGS;

  cleanup = FUNC3 (uiout, "register-names");

  if (argc == 0)		/* No args, just do all the regs */
    {
      for (regnum = 0;
	   regnum < numregs;
	   regnum++)
	{
	  if (FUNC0 (regnum) == NULL
	      || *(FUNC0 (regnum)) == '\0')
	    FUNC4 (uiout, NULL, "");
	  else
	    FUNC4 (uiout, NULL, FUNC0 (regnum));
	}
    }

  /* Else, list of register #s, just do listed regs */
  for (i = 0; i < argc; i++)
    {
      regnum = FUNC1 (argv[i]);
      if (regnum < 0 || regnum >= numregs)
	{
	  FUNC2 (cleanup);
	  FUNC5 (&mi_error_message, "bad register number");
	  return MI_CMD_ERROR;
	}
      if (FUNC0 (regnum) == NULL
	  || *(FUNC0 (regnum)) == '\0')
	FUNC4 (uiout, NULL, "");
      else
	FUNC4 (uiout, NULL, FUNC0 (regnum));
    }
  FUNC2 (cleanup);
  return MI_CMD_DONE;
}