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
typedef  enum varobj_languages { ____Placeholder_varobj_languages } varobj_languages ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC2 (struct varobj*) ; 
 struct varobj* FUNC3 (char*) ; 
 int FUNC4 (struct varobj*) ; 
 int /*<<< orphan*/ * varobj_language_string ; 

enum mi_cmd_result
FUNC5 (char *command, char **argv, int argc)
{
  enum varobj_languages lang;
  struct varobj *var;

  if (argc != 1)
    FUNC0 ("mi_cmd_var_info_expression: Usage: NAME.");

  /* Get varobj handle, if a valid var obj name was specified */
  var = FUNC3 (argv[0]);
  if (var == NULL)
    FUNC0 ("mi_cmd_var_info_expression: Variable object not found");

  lang = FUNC4 (var);

  FUNC1 (uiout, "lang", varobj_language_string[(int) lang]);
  FUNC1 (uiout, "exp", FUNC2 (var));
  return MI_CMD_DONE;
}