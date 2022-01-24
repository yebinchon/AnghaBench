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
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 
 int FUNC2 (struct varobj*) ; 
 struct varobj* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct varobj*) ; 
 int /*<<< orphan*/  FUNC5 (struct varobj*,char*) ; 
 char* FUNC6 (char*) ; 

enum mi_cmd_result
FUNC7 (char *command, char **argv, int argc)
{
  struct varobj *var;
  char *expression;

  if (argc != 2)
    FUNC0 ("mi_cmd_var_assign: Usage: NAME EXPRESSION.");

  /* Get varobj handle, if a valid var obj name was specified */
  var = FUNC3 (argv[0]);
  if (var == NULL)
    FUNC0 ("mi_cmd_var_assign: Variable object not found");

  /* FIXME: define masks for attributes */
  if (!(FUNC2 (var) & 0x00000001))
    FUNC0 ("mi_cmd_var_assign: Variable object is not editable");

  expression = FUNC6 (argv[1]);

  if (!FUNC5 (var, expression))
    FUNC0 ("mi_cmd_var_assign: Could not assign expression to varible object");

  FUNC1 (uiout, "value", FUNC4 (var));
  return MI_CMD_DONE;
}