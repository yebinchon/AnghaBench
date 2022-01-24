#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tracepoint {int /*<<< orphan*/  step_count; int /*<<< orphan*/  address; } ;
struct expression {TYPE_1__* elts; } ;
struct cmd_list_element {int dummy; } ;
struct cleanup {int dummy; } ;
struct agent_reqs {scalar_t__ flaw; scalar_t__ min_height; int max_height; struct expression** reg_mask; } ;
struct agent_expr {scalar_t__ len; } ;
typedef  enum actionline_type { ____Placeholder_actionline_type } actionline_type ;
struct TYPE_2__ {scalar_t__ opcode; int /*<<< orphan*/  symbol; } ;

/* Variables and functions */
 int BADLINE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int END ; 
 int GENERIC ; 
 scalar_t__ LOC_CONST ; 
 scalar_t__ LOC_OPTIMIZED_OUT ; 
 scalar_t__ MAX_AGENT_EXPR_LEN ; 
 scalar_t__ OP_VAR_VALUE ; 
 int /*<<< orphan*/  QUIT ; 
 int STEPPING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ agent_flaw_none ; 
 int /*<<< orphan*/  FUNC3 (struct agent_expr*,struct agent_reqs*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  collect_pseudocommand ; 
 int /*<<< orphan*/  FUNC6 (struct cleanup*) ; 
 int /*<<< orphan*/  end_actions_pseudocommand ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 struct agent_expr* FUNC8 (int /*<<< orphan*/ ,struct expression*) ; 
 scalar_t__ FUNC9 (int) ; 
 struct cmd_list_element* FUNC10 (char**,int /*<<< orphan*/ ,char*,int,int) ; 
 struct cleanup* FUNC11 (int /*<<< orphan*/ ,struct expression**) ; 
 int /*<<< orphan*/  FUNC12 (struct agent_expr*) ; 
 struct expression* FUNC13 (char**,int /*<<< orphan*/ ,int) ; 
 char* FUNC14 (char*,char) ; 
 scalar_t__ FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,...) ; 
 int /*<<< orphan*/  while_stepping_pseudocommand ; 
 int /*<<< orphan*/  xfree ; 

enum actionline_type
FUNC18 (char **line, struct tracepoint *t)
{
  struct cmd_list_element *c;
  struct expression *exp = NULL;
  struct cleanup *old_chain = NULL;
  char *p;

  /* if EOF is typed, *line is NULL */
  if (*line == NULL)
    return END;

  for (p = *line; FUNC9 ((int) *p);)
    p++;

  /* symbol lookup etc. */
  if (*p == '\0')		/* empty line: just prompt for another line. */
    return BADLINE;

  if (*p == '#')		/* comment line */
    return GENERIC;

  c = FUNC10 (&p, cmdlist, "", -1, 1);
  if (c == 0)
    {
      FUNC17 ("'%s' is not an action that I know, or is ambiguous.", p);
      return BADLINE;
    }

  if (FUNC5 (c, collect_pseudocommand))
    {
      struct agent_expr *aexpr;
      struct agent_reqs areqs;

      do
	{			/* repeat over a comma-separated list */
	  QUIT;			/* allow user to bail out with ^C */
	  while (FUNC9 ((int) *p))
	    p++;

	  if (*p == '$')	/* look for special pseudo-symbols */
	    {
	      if ((0 == FUNC15 ("reg", p + 1, 3)) ||
		  (0 == FUNC15 ("arg", p + 1, 3)) ||
		  (0 == FUNC15 ("loc", p + 1, 3)))
		{
		  p = FUNC14 (p, ',');
		  continue;
		}
	      /* else fall thru, treat p as an expression and parse it! */
	    }
	  exp = FUNC13 (&p, FUNC4 (t->address), 1);
	  old_chain = FUNC11 (free_current_contents, &exp);

	  if (exp->elts[0].opcode == OP_VAR_VALUE)
	    {
	      if (FUNC1 (exp->elts[2].symbol) == LOC_CONST)
		{
		  FUNC17 ("constant %s (value %ld) will not be collected.",
			   FUNC0 (exp->elts[2].symbol),
			   FUNC2 (exp->elts[2].symbol));
		  return BADLINE;
		}
	      else if (FUNC1 (exp->elts[2].symbol) == LOC_OPTIMIZED_OUT)
		{
		  FUNC17 ("%s is optimized away and cannot be collected.",
			   FUNC0 (exp->elts[2].symbol));
		  return BADLINE;
		}
	    }

	  /* we have something to collect, make sure that the expr to
	     bytecode translator can handle it and that it's not too long */
	  aexpr = FUNC8 (t->address, exp);
	  FUNC12 (aexpr);

	  if (aexpr->len > MAX_AGENT_EXPR_LEN)
	    FUNC7 ("expression too complicated, try simplifying");

	  FUNC3 (aexpr, &areqs);
	  (void) FUNC11 (xfree, areqs.reg_mask);

	  if (areqs.flaw != agent_flaw_none)
	    FUNC7 ("malformed expression");

	  if (areqs.min_height < 0)
	    FUNC7 ("gdb: Internal error: expression has min height < 0");

	  if (areqs.max_height > 20)
	    FUNC7 ("expression too complicated, try simplifying");

	  FUNC6 (old_chain);
	}
      while (p && *p++ == ',');
      return GENERIC;
    }
  else if (FUNC5 (c, while_stepping_pseudocommand))
    {
      char *steparg;		/* in case warning is necessary */

      while (FUNC9 ((int) *p))
	p++;
      steparg = p;

      if (*p == '\0' ||
	  (t->step_count = FUNC16 (p, &p, 0)) == 0)
	{
	  FUNC17 ("'%s': bad step-count; command ignored.", *line);
	  return BADLINE;
	}
      return STEPPING;
    }
  else if (FUNC5 (c, end_actions_pseudocommand))
    return END;
  else
    {
      FUNC17 ("'%s' is not a supported tracepoint action.", *line);
      return BADLINE;
    }
}