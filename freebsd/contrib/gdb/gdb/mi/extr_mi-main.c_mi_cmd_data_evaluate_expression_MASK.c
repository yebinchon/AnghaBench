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
struct value {int dummy; } ;
struct ui_stream {int /*<<< orphan*/  stream; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int MI_CMD_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 struct value* FUNC5 (struct expression*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/ ,struct expression**) ; 
 int /*<<< orphan*/  mi_error_message ; 
 struct expression* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct ui_stream*) ; 
 int /*<<< orphan*/  FUNC9 (struct ui_stream*) ; 
 struct ui_stream* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 

enum mi_cmd_result
FUNC13 (char *command, char **argv, int argc)
{
  struct expression *expr;
  struct cleanup *old_chain = NULL;
  struct value *val;
  struct ui_stream *stb = NULL;

  stb = FUNC10 (uiout);

  if (argc != 1)
    {
      FUNC12 (&mi_error_message,
		 "mi_cmd_data_evaluate_expression: Usage: -data-evaluate-expression expression");
      return MI_CMD_ERROR;
    }

  expr = FUNC7 (argv[0]);

  old_chain = FUNC6 (free_current_contents, &expr);

  val = FUNC5 (expr);

  /* Print the result of the expression evaluation. */
  FUNC11 (FUNC3 (val), FUNC1 (val),
	     FUNC2 (val), FUNC0 (val),
	     stb->stream, 0, 0, 0, 0);

  FUNC8 (uiout, "value", stb);
  FUNC9 (stb);

  FUNC4 (old_chain);

  return MI_CMD_DONE;
}