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
struct type {int dummy; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  gdb_stdout ; 
 struct cleanup* FUNC1 (int /*<<< orphan*/ ,struct expression**) ; 
 struct expression* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct type* FUNC4 (struct expression*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7 (char *typename, int from_tty)
{
  struct type *type;
  struct expression *expr;
  struct cleanup *old_chain;

  if (typename == NULL)
    {
      /* Print type of last thing in value history. */
      FUNC6 (typename, 1);
    }
  else
    {
      expr = FUNC2 (typename);
      old_chain = FUNC1 (free_current_contents, &expr);
      type = FUNC4 (expr);
      if (type != NULL)
	{
	  /* User did "ptype <typename>" */
	  FUNC3 ("type = ");
	  FUNC5 (type, "", gdb_stdout, 1);
	  FUNC3 ("\n");
	  FUNC0 (old_chain);
	}
      else
	{
	  /* User did "ptype <symbolname>" */
	  FUNC0 (old_chain);
	  FUNC6 (typename, 1);
	}
    }
}