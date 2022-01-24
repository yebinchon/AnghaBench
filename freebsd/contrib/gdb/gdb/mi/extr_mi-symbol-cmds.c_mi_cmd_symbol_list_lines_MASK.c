#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct symtab {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
struct TYPE_4__ {int nitems; TYPE_1__* item; } ;
struct TYPE_3__ {int /*<<< orphan*/  line; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct symtab*) ; 
 int MI_CMD_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct symtab* FUNC3 (char*) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 

enum mi_cmd_result
FUNC8 (char *command, char **argv, int argc)
{
  char *filename;
  struct symtab *s;
  int i;
  struct cleanup *cleanup_stack, *cleanup_tuple;

  if (argc != 1)
    FUNC2 ("mi_cmd_symbol_list_lines: Usage: SOURCE_FILENAME");

  filename = argv[0];
  s = FUNC3 (filename);

  if (s == NULL)
    FUNC2 ("mi_cmd_symbol_list_lines: Unknown source file name.");

  /* Now, dump the associated line table.  The pc addresses are already
     sorted by increasing values in the symbol table, so no need to
     perform any other sorting. */

  cleanup_stack = FUNC4 (uiout, "lines");

  if (FUNC0 (s) != NULL && FUNC0 (s)->nitems > 0)
    for (i = 0; i < FUNC0 (s)->nitems; i++)
    {
      cleanup_tuple = FUNC5 (uiout, NULL);
      FUNC6 (uiout, "pc", FUNC0 (s)->item[i].pc);
      FUNC7 (uiout, "line", FUNC0 (s)->item[i].line);
      FUNC1 (cleanup_tuple);
    }

  FUNC1 (cleanup_stack);

  return MI_CMD_DONE;
}