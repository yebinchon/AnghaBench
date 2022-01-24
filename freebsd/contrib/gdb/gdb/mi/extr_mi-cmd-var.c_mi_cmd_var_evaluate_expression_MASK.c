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
 struct varobj* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct varobj*) ; 

enum mi_cmd_result
FUNC4 (char *command, char **argv, int argc)
{
  struct varobj *var;

  if (argc != 1)
    FUNC0 ("mi_cmd_var_evaluate_expression: Usage: NAME.");

  /* Get varobj handle, if a valid var obj name was specified */
  var = FUNC2 (argv[0]);
  if (var == NULL)
    FUNC0 ("mi_cmd_var_evaluate_expression: Variable object not found");

  FUNC1 (uiout, "value", FUNC3 (var));
  return MI_CMD_DONE;
}