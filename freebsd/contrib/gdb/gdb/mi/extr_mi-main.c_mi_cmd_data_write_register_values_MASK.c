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
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DEPRECATED_REGISTER_SIZE ; 
 int MI_CMD_DONE ; 
 int MI_CMD_ERROR ; 
 int NUM_REGS ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cleanup*) ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  mi_error_message ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_has_registers ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  xfree ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 

enum mi_cmd_result
FUNC11 (char *command, char **argv, int argc)
{
  int regnum;
  int i;
  int numregs;
  LONGEST value;
  char format;

  /* Note that the test for a valid register must include checking the
     REGISTER_NAME because NUM_REGS may be allocated for the union of
     the register sets within a family of related processors.  In this
     case, some entries of REGISTER_NAME will change depending upon
     the particular processor being debugged.  */

  numregs = NUM_REGS;

  if (argc == 0)
    {
      FUNC9 (&mi_error_message,
		 "mi_cmd_data_write_register_values: Usage: -data-write-register-values <format> [<regnum1> <value1>...<regnumN> <valueN>]");
      return MI_CMD_ERROR;
    }

  format = (int) argv[0][0];

  if (!target_has_registers)
    {
      FUNC9 (&mi_error_message,
		 "mi_cmd_data_write_register_values: No registers.");
      return MI_CMD_ERROR;
    }

  if (!(argc - 1))
    {
      FUNC9 (&mi_error_message,
		 "mi_cmd_data_write_register_values: No regs and values specified.");
      return MI_CMD_ERROR;
    }

  if ((argc - 1) % 2)
    {
      FUNC9 (&mi_error_message,
		 "mi_cmd_data_write_register_values: Regs and vals are not in pairs.");
      return MI_CMD_ERROR;
    }

  for (i = 1; i < argc; i = i + 2)
    {
      regnum = FUNC3 (argv[i]);

      if (regnum >= 0
	  && regnum < numregs
	  && FUNC2 (regnum) != NULL
	  && *FUNC2 (regnum) != '\000')
	{
	  void *buffer;
	  struct cleanup *old_chain;

	  /* Get the value as a number */
	  value = FUNC7 (argv[i + 1]);
	  /* Get the value into an array */
	  buffer = FUNC10 (DEPRECATED_REGISTER_SIZE);
	  old_chain = FUNC6 (xfree, buffer);
	  FUNC8 (buffer, DEPRECATED_REGISTER_SIZE, value);
	  /* Write it down */
	  FUNC4 (FUNC0 (regnum), buffer, FUNC1 (regnum));
	  /* Free the buffer.  */
	  FUNC5 (old_chain);
	}
      else
	{
	  FUNC9 (&mi_error_message, "bad register number");
	  return MI_CMD_ERROR;
	}
    }
  return MI_CMD_DONE;
}