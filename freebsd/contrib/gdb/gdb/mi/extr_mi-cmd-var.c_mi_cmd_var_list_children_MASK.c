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
typedef  enum print_values { ____Placeholder_print_values } print_values ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int PRINT_ALL_VALUES ; 
 int PRINT_NO_VALUES ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  uiout ; 
 char* FUNC8 (struct varobj*) ; 
 struct varobj* FUNC9 (char*) ; 
 int FUNC10 (struct varobj*) ; 
 char* FUNC11 (struct varobj*) ; 
 char* FUNC12 (struct varobj*) ; 
 char* FUNC13 (struct varobj*) ; 
 int FUNC14 (struct varobj*,struct varobj***) ; 
 int /*<<< orphan*/  FUNC15 (struct varobj**) ; 

enum mi_cmd_result
FUNC16 (char *command, char **argv, int argc)
{
  struct varobj *var;
  struct varobj **childlist;
  struct varobj **cc;
  struct cleanup *cleanup_children;
  int numchild;
  char *type;
  enum print_values print_values;

  if (argc != 1 && argc != 2)
    FUNC1 ("mi_cmd_var_list_children: Usage: [PRINT_VALUES] NAME");

  /* Get varobj handle, if a valid var obj name was specified */
  if (argc == 1) var = FUNC9 (argv[0]);
  else var = FUNC9 (argv[1]);
  if (var == NULL)
    FUNC1 ("Variable object not found");

  numchild = FUNC14 (var, &childlist);
  FUNC6 (uiout, "numchild", numchild);
  if (argc == 2)
    if (FUNC5 (argv[0], "0") == 0
	|| FUNC5 (argv[0], "--no-values") == 0)
      print_values = PRINT_NO_VALUES;
    else if (FUNC5 (argv[0], "1") == 0
	     || FUNC5 (argv[0], "--all-values") == 0)
      print_values = PRINT_ALL_VALUES;
    else
     FUNC1 ("Unknown value for PRINT_VALUES: must be: 0 or \"--no-values\", 1 or \"--all-values\"");
  else print_values = PRINT_NO_VALUES;

  if (numchild <= 0)
    return MI_CMD_DONE;

  if (FUNC4 (uiout) == 1)
    cleanup_children = FUNC3 (uiout, "children");
  else
    cleanup_children = FUNC2 (uiout, "children");
  cc = childlist;
  while (*cc != NULL)
    {
      struct cleanup *cleanup_child;
      cleanup_child = FUNC3 (uiout, "child");
      FUNC7 (uiout, "name", FUNC11 (*cc));
      FUNC7 (uiout, "exp", FUNC8 (*cc));
      FUNC6 (uiout, "numchild", FUNC10 (*cc));
      if (print_values)
	FUNC7 (uiout, "value", FUNC13 (*cc));
      type = FUNC12 (*cc);
      /* C++ pseudo-variables (public, private, protected) do not have a type */
      if (type)
	FUNC7 (uiout, "type", FUNC12 (*cc));
      FUNC0 (cleanup_child);
      cc++;
    }
  FUNC0 (cleanup_children);
  FUNC15 (childlist);
  return MI_CMD_DONE;
}