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
struct value {int dummy; } ;
struct tracepoint {int /*<<< orphan*/  address; struct action_line* actions; } ;
struct expression {TYPE_1__* elts; } ;
struct collection_list {int dummy; } ;
struct cmd_list_element {int dummy; } ;
struct cleanup {int dummy; } ;
struct agent_reqs {int max_height; int reg_mask_len; int* reg_mask; int /*<<< orphan*/  min_height; int /*<<< orphan*/  flaw; } ;
struct agent_expr {int dummy; } ;
struct action_line {char* action; struct action_line* next; } ;
struct TYPE_2__ {int opcode; int longconst; int /*<<< orphan*/  symbol; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int NUM_REGS ; 
#define  OP_REGISTER 130 
#define  OP_VAR_VALUE 129 
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
#define  UNOP_MEMVAL 128 
 unsigned long FUNC2 (struct value*) ; 
 unsigned long FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct collection_list*,struct agent_expr*) ; 
 int /*<<< orphan*/  FUNC5 (struct collection_list*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (struct collection_list*,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct collection_list*,int) ; 
 int /*<<< orphan*/  agent_flaw_none ; 
 int /*<<< orphan*/  FUNC8 (struct agent_expr*,struct agent_reqs*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct collection_list*) ; 
 scalar_t__ FUNC12 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  collect_pseudocommand ; 
 int /*<<< orphan*/  FUNC13 (struct collection_list*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC15 (struct cleanup*) ; 
 int /*<<< orphan*/  end_actions_pseudocommand ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 struct value* FUNC17 (struct expression*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 struct agent_expr* FUNC18 (int /*<<< orphan*/ ,struct expression*) ; 
 int /*<<< orphan*/  info_verbose ; 
 scalar_t__ FUNC19 (int) ; 
 struct cmd_list_element* FUNC20 (char**,int /*<<< orphan*/ ,char*,int,int) ; 
 struct cleanup* FUNC21 (int /*<<< orphan*/ ,struct expression**) ; 
 struct cleanup* FUNC22 (struct agent_expr*) ; 
 int /*<<< orphan*/  FUNC23 (struct collection_list*) ; 
 struct expression* FUNC24 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 struct collection_list stepping_list ; 
 char* FUNC26 (char*,char) ; 
 char** FUNC27 (struct collection_list*,char*) ; 
 scalar_t__ FUNC28 (char*,char*,int) ; 
 struct collection_list tracepoint_list ; 
 int /*<<< orphan*/  while_stepping_pseudocommand ; 

__attribute__((used)) static void
FUNC29 (struct tracepoint *t, char ***tdp_actions,
		char ***stepping_actions)
{
  static char tdp_buff[2048], step_buff[2048];
  char *action_exp;
  struct expression *exp = NULL;
  struct action_line *action;
  int i;
  struct value *tempval;
  struct collection_list *collect;
  struct cmd_list_element *cmd;
  struct agent_expr *aexpr;
  int frame_reg;
  LONGEST frame_offset;


  FUNC11 (&tracepoint_list);
  FUNC11 (&stepping_list);
  collect = &tracepoint_list;

  *tdp_actions = NULL;
  *stepping_actions = NULL;

  FUNC0 (t->address, &frame_reg, &frame_offset);

  for (action = t->actions; action; action = action->next)
    {
      QUIT;			/* allow user to bail out with ^C */
      action_exp = action->action;
      while (FUNC19 ((int) *action_exp))
	action_exp++;

      if (*action_exp == '#')	/* comment line */
	return;

      cmd = FUNC20 (&action_exp, cmdlist, "", -1, 1);
      if (cmd == 0)
	FUNC16 ("Bad action list item: %s", action_exp);

      if (FUNC12 (cmd, collect_pseudocommand))
	{
	  do
	    {			/* repeat over a comma-separated list */
	      QUIT;		/* allow user to bail out with ^C */
	      while (FUNC19 ((int) *action_exp))
		action_exp++;

	      if (0 == FUNC28 ("$reg", action_exp, 4))
		{
		  for (i = 0; i < NUM_REGS; i++)
		    FUNC7 (collect, i);
		  action_exp = FUNC26 (action_exp, ',');	/* more? */
		}
	      else if (0 == FUNC28 ("$arg", action_exp, 4))
		{
		  FUNC5 (collect,
				     t->address,
				     frame_reg,
				     frame_offset,
				     'A');
		  action_exp = FUNC26 (action_exp, ',');	/* more? */
		}
	      else if (0 == FUNC28 ("$loc", action_exp, 4))
		{
		  FUNC5 (collect,
				     t->address,
				     frame_reg,
				     frame_offset,
				     'L');
		  action_exp = FUNC26 (action_exp, ',');	/* more? */
		}
	      else
		{
		  unsigned long addr, len;
		  struct cleanup *old_chain = NULL;
		  struct cleanup *old_chain1 = NULL;
		  struct agent_reqs areqs;

		  exp = FUNC24 (&action_exp, 
				     FUNC9 (t->address), 1);
		  old_chain = FUNC21 (free_current_contents, &exp);

		  switch (exp->elts[0].opcode)
		    {
		    case OP_REGISTER:
		      i = exp->elts[1].longconst;
		      if (info_verbose)
			FUNC25 ("OP_REGISTER: ");
		      FUNC7 (collect, i);
		      break;

		    case UNOP_MEMVAL:
		      /* safe because we know it's a simple expression */
		      tempval = FUNC17 (exp);
		      addr = FUNC2 (tempval) + FUNC3 (tempval);
		      len = FUNC1 (FUNC10 (exp->elts[1].type));
		      FUNC6 (collect, -1, addr, len);
		      break;

		    case OP_VAR_VALUE:
		      FUNC13 (collect,
				      exp->elts[2].symbol,
				      frame_reg,
				      frame_offset);
		      break;

		    default:	/* full-fledged expression */
		      aexpr = FUNC18 (t->address, exp);

		      old_chain1 = FUNC22 (aexpr);

		      FUNC8 (aexpr, &areqs);
		      if (areqs.flaw != agent_flaw_none)
			FUNC16 ("malformed expression");

		      if (areqs.min_height < 0)
			FUNC16 ("gdb: Internal error: expression has min height < 0");
		      if (areqs.max_height > 20)
			FUNC16 ("expression too complicated, try simplifying");

		      FUNC14 (old_chain1);
		      FUNC4 (collect, aexpr);

		      /* take care of the registers */
		      if (areqs.reg_mask_len > 0)
			{
			  int ndx1;
			  int ndx2;

			  for (ndx1 = 0; ndx1 < areqs.reg_mask_len; ndx1++)
			    {
			      QUIT;	/* allow user to bail out with ^C */
			      if (areqs.reg_mask[ndx1] != 0)
				{
				  /* assume chars have 8 bits */
				  for (ndx2 = 0; ndx2 < 8; ndx2++)
				    if (areqs.reg_mask[ndx1] & (1 << ndx2))
				      /* it's used -- record it */
				      FUNC7 (collect, ndx1 * 8 + ndx2);
				}
			    }
			}
		      break;
		    }		/* switch */
		  FUNC15 (old_chain);
		}		/* do */
	    }
	  while (action_exp && *action_exp++ == ',');
	}			/* if */
      else if (FUNC12 (cmd, while_stepping_pseudocommand))
	{
	  collect = &stepping_list;
	}
      else if (FUNC12 (cmd, end_actions_pseudocommand))
	{
	  if (collect == &stepping_list)	/* end stepping actions */
	    collect = &tracepoint_list;
	  else
	    break;		/* end tracepoint actions */
	}
    }				/* for */
  FUNC23 (&tracepoint_list);
  FUNC23 (&stepping_list);

  *tdp_actions = FUNC27 (&tracepoint_list, tdp_buff);
  *stepping_actions = FUNC27 (&stepping_list, step_buff);
}