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
 int NUM_REGS ; 
 char* FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int FUNC3 (int,int) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mi_error_message ; 
 int /*<<< orphan*/  target_has_registers ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

enum mi_cmd_result
FUNC8 (char *command, char **argv, int argc)
{
  int regnum, numregs, format, result;
  int i;
  struct cleanup *list_cleanup, *tuple_cleanup;

  /* Note that the test for a valid register must include checking the
     REGISTER_NAME because NUM_REGS may be allocated for the union of
     the register sets within a family of related processors.  In this
     case, some entries of REGISTER_NAME will change depending upon
     the particular processor being debugged.  */

  numregs = NUM_REGS;

  if (argc == 0)
    {
      FUNC7 (&mi_error_message,
		 "mi_cmd_data_list_register_values: Usage: -data-list-register-values <format> [<regnum1>...<regnumN>]");
      return MI_CMD_ERROR;
    }

  format = (int) argv[0][0];

  if (!target_has_registers)
    {
      FUNC7 (&mi_error_message,
		 "mi_cmd_data_list_register_values: No registers.");
      return MI_CMD_ERROR;
    }

  list_cleanup = FUNC4 (uiout, "register-values");

  if (argc == 1)		/* No args, beside the format: do all the regs */
    {
      for (regnum = 0;
	   regnum < numregs;
	   regnum++)
	{
	  if (FUNC0 (regnum) == NULL
	      || *(FUNC0 (regnum)) == '\0')
	    continue;
	  tuple_cleanup = FUNC5 (uiout, NULL);
	  FUNC6 (uiout, "number", regnum);
	  result = FUNC3 (regnum, format);
	  if (result == -1)
	    {
	      FUNC2 (list_cleanup);
	      return MI_CMD_ERROR;
	    }
	  FUNC2 (tuple_cleanup);
	}
    }

  /* Else, list of register #s, just do listed regs */
  for (i = 1; i < argc; i++)
    {
      regnum = FUNC1 (argv[i]);

      if (regnum >= 0
	  && regnum < numregs
	  && FUNC0 (regnum) != NULL
	  && *FUNC0 (regnum) != '\000')
	{
	  tuple_cleanup = FUNC5 (uiout, NULL);
	  FUNC6 (uiout, "number", regnum);
	  result = FUNC3 (regnum, format);
	  if (result == -1)
	    {
	      FUNC2 (list_cleanup);
	      return MI_CMD_ERROR;
	    }
	  FUNC2 (tuple_cleanup);
	}
      else
	{
	  FUNC2 (list_cleanup);
	  FUNC7 (&mi_error_message, "bad register number");
	  return MI_CMD_ERROR;
	}
    }
  FUNC2 (list_cleanup);
  return MI_CMD_DONE;
}