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
typedef  enum varobj_display_formats { ____Placeholder_varobj_display_formats } varobj_display_formats ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int FORMAT_BINARY ; 
 int FORMAT_DECIMAL ; 
 int FORMAT_HEXADECIMAL ; 
 int FORMAT_NATURAL ; 
 int FORMAT_OCTAL ; 
 int MI_CMD_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/ * varobj_format_string ; 
 struct varobj* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct varobj*,int) ; 
 char* FUNC6 (char*) ; 

enum mi_cmd_result
FUNC7 (char *command, char **argv, int argc)
{
  enum varobj_display_formats format;
  int len;
  struct varobj *var;
  char *formspec;

  if (argc != 2)
    FUNC0 ("mi_cmd_var_set_format: Usage: NAME FORMAT.");

  /* Get varobj handle, if a valid var obj name was specified */
  var = FUNC4 (argv[0]);

  if (var == NULL)
    FUNC0 ("mi_cmd_var_set_format: Variable object not found");

  formspec = FUNC6 (argv[1]);
  if (formspec == NULL)
    FUNC0 ("mi_cmd_var_set_format: Must specify the format as: \"natural\", \"binary\", \"decimal\", \"hexadecimal\", or \"octal\"");

  len = FUNC1 (formspec);

  if (FUNC2 (formspec, "natural", len) == 0)
    format = FORMAT_NATURAL;
  else if (FUNC2 (formspec, "binary", len) == 0)
    format = FORMAT_BINARY;
  else if (FUNC2 (formspec, "decimal", len) == 0)
    format = FORMAT_DECIMAL;
  else if (FUNC2 (formspec, "hexadecimal", len) == 0)
    format = FORMAT_HEXADECIMAL;
  else if (FUNC2 (formspec, "octal", len) == 0)
    format = FORMAT_OCTAL;
  else
    FUNC0 ("mi_cmd_var_set_format: Unknown display format: must be: \"natural\", \"binary\", \"decimal\", \"hexadecimal\", or \"octal\"");

  /* Set the format of VAR to given format */
  FUNC5 (var, format);

  /* Report the new current format */
  FUNC3 (uiout, "format", varobj_format_string[(int) format]);
  return MI_CMD_DONE;
}