#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int reg_syntax_t ;
typedef  int /*<<< orphan*/  reg_errcode_t ;
struct TYPE_17__ {char c; } ;
struct TYPE_20__ {scalar_t__ type; TYPE_1__ opr; } ;
typedef  TYPE_4__ re_token_t ;
typedef  int /*<<< orphan*/  re_string_t ;
typedef  int /*<<< orphan*/  re_dfa_t ;
struct TYPE_18__ {scalar_t__ idx; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_2__ opr; } ;
struct TYPE_21__ {TYPE_3__ token; } ;
typedef  TYPE_5__ bin_tree_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ CHARACTER ; 
 int /*<<< orphan*/  CONCAT ; 
 scalar_t__ END_OF_RE ; 
 int /*<<< orphan*/  OP_ALT ; 
 scalar_t__ OP_CLOSE_DUP_NUM ; 
 int /*<<< orphan*/  OP_DUP_ASTERISK ; 
 scalar_t__ OP_DUP_PLUS ; 
 scalar_t__ OP_DUP_QUESTION ; 
 scalar_t__ OP_OPEN_DUP_NUM ; 
 int /*<<< orphan*/  REG_BADBR ; 
 int /*<<< orphan*/  REG_EBRACE ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int RE_INVALID_INTERVAL_ORD ; 
 scalar_t__ SUBEXP ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  free_tree ; 
 int /*<<< orphan*/  mark_opt_subexp ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bin_tree_t *
FUNC8 (bin_tree_t *elem, re_string_t *regexp, re_dfa_t *dfa,
	      re_token_t *token, reg_syntax_t syntax, reg_errcode_t *err)
{
  bin_tree_t *tree = NULL, *old_tree = NULL;
  int i, start, end, start_idx = FUNC6 (regexp);
  re_token_t start_token = *token;

  if (token->type == OP_OPEN_DUP_NUM)
    {
      end = 0;
      start = FUNC3 (regexp, token, syntax);
      if (start == -1)
	{
	  if (token->type == CHARACTER && token->opr.c == ',')
	    start = 0; /* We treat "{,m}" as "{0,m}".  */
	  else
	    {
	      *err = REG_BADBR; /* <re>{} is invalid.  */
	      return NULL;
	    }
	}
      if (FUNC0 (start != -2, 1))
	{
	  /* We treat "{n}" as "{n,n}".  */
	  end = ((token->type == OP_CLOSE_DUP_NUM) ? start
		 : ((token->type == CHARACTER && token->opr.c == ',')
		    ? FUNC3 (regexp, token, syntax) : -2));
	}
      if (FUNC0 (start == -2 || end == -2, 0))
	{
	  /* Invalid sequence.  */
	  if (FUNC0 (!(syntax & RE_INVALID_INTERVAL_ORD), 0))
	    {
	      if (token->type == END_OF_RE)
		*err = REG_EBRACE;
	      else
		*err = REG_BADBR;

	      return NULL;
	    }

	  /* If the syntax bit is set, rollback.  */
	  FUNC7 (regexp, start_idx);
	  *token = start_token;
	  token->type = CHARACTER;
	  /* mb_partial and word_char bits should be already initialized by
	     peek_token.  */
	  return elem;
	}

      if (FUNC0 ((end != -1 && start > end) || token->type != OP_CLOSE_DUP_NUM, 0))
	{
	  /* First number greater than second.  */
	  *err = REG_BADBR;
	  return NULL;
	}
    }
  else
    {
      start = (token->type == OP_DUP_PLUS) ? 1 : 0;
      end = (token->type == OP_DUP_QUESTION) ? 1 : -1;
    }

  FUNC4 (token, regexp, syntax);

  if (FUNC0 (elem == NULL, 0))
    return NULL;
  if (FUNC0 (start == 0 && end == 0, 0))
    {
      FUNC5 (elem, free_tree, NULL);
      return NULL;
    }

  /* Extract "<re>{n,m}" to "<re><re>...<re><re>{0,<m-n>}".  */
  if (FUNC0 (start > 0, 0))
    {
      tree = elem;
      for (i = 2; i <= start; ++i)
	{
	  elem = FUNC2 (elem, dfa);
	  tree = FUNC1 (dfa, tree, elem, CONCAT);
	  if (FUNC0 (elem == NULL || tree == NULL, 0))
	    goto parse_dup_op_espace;
	}

      if (start == end)
	return tree;

      /* Duplicate ELEM before it is marked optional.  */
      elem = FUNC2 (elem, dfa);
      old_tree = tree;
    }
  else
    old_tree = NULL;

  if (elem->token.type == SUBEXP)
    FUNC5 (elem, mark_opt_subexp, (void *) (long) elem->token.opr.idx);

  tree = FUNC1 (dfa, elem, NULL, (end == -1 ? OP_DUP_ASTERISK : OP_ALT));
  if (FUNC0 (tree == NULL, 0))
    goto parse_dup_op_espace;

  /* This loop is actually executed only when end != -1,
     to rewrite <re>{0,n} as (<re>(<re>...<re>?)?)?...  We have
     already created the start+1-th copy.  */
  for (i = start + 2; i <= end; ++i)
    {
      elem = FUNC2 (elem, dfa);
      tree = FUNC1 (dfa, tree, elem, CONCAT);
      if (FUNC0 (elem == NULL || tree == NULL, 0))
	goto parse_dup_op_espace;

      tree = FUNC1 (dfa, tree, NULL, OP_ALT);
      if (FUNC0 (tree == NULL, 0))
	goto parse_dup_op_espace;
    }

  if (old_tree)
    tree = FUNC1 (dfa, old_tree, tree, CONCAT);

  return tree;

 parse_dup_op_espace:
  *err = REG_ESPACE;
  return NULL;
}