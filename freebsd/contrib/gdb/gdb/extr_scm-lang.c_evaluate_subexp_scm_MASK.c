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
struct type {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
typedef  enum noside { ____Placeholder_noside } noside ;
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
struct TYPE_2__ {int opcode; char string; int /*<<< orphan*/  longconst; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EVAL_SKIP ; 
#define  OP_EXPRSTRING 129 
#define  OP_NAME 128 
 int /*<<< orphan*/  builtin_type_long ; 
 struct value* FUNC1 (struct type*,struct expression*,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct value* FUNC3 (char*,int) ; 
 struct value* FUNC4 (char*) ; 
 struct value* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct value *
FUNC6 (struct type *expect_type, struct expression *exp,
		     int *pos, enum noside noside)
{
  enum exp_opcode op = exp->elts[*pos].opcode;
  int len, pc;
  char *str;
  switch (op)
    {
    case OP_NAME:
      pc = (*pos)++;
      len = FUNC2 (exp->elts[pc + 1].longconst);
      (*pos) += 3 + FUNC0 (len + 1);
      if (noside == EVAL_SKIP)
	goto nosideret;
      str = &exp->elts[pc + 2].string;
      return FUNC4 (str);
    case OP_EXPRSTRING:
      pc = (*pos)++;
      len = FUNC2 (exp->elts[pc + 1].longconst);
      (*pos) += 3 + FUNC0 (len + 1);
      if (noside == EVAL_SKIP)
	goto nosideret;
      str = &exp->elts[pc + 2].string;
      return FUNC3 (str, len);
    default:;
    }
  return FUNC1 (expect_type, exp, pos, noside);
nosideret:
  return FUNC5 (builtin_type_long, (LONGEST) 1);
}