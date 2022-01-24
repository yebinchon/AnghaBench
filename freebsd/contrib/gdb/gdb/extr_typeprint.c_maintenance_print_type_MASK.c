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
struct cleanup {int dummy; } ;
struct TYPE_2__ {scalar_t__ opcode; struct type* type; } ;

/* Variables and functions */
 scalar_t__ OP_TYPE ; 
 struct type* FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 struct value* FUNC2 (struct expression*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,struct expression**) ; 
 struct expression* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,int /*<<< orphan*/ ) ; 

void
FUNC6 (char *typename, int from_tty)
{
  struct value *val;
  struct type *type;
  struct cleanup *old_chain;
  struct expression *expr;

  if (typename != NULL)
    {
      expr = FUNC4 (typename);
      old_chain = FUNC3 (free_current_contents, &expr);
      if (expr->elts[0].opcode == OP_TYPE)
	{
	  /* The user expression names a type directly, just use that type. */
	  type = expr->elts[1].type;
	}
      else
	{
	  /* The user expression may name a type indirectly by naming an
	     object of that type.  Find that indirectly named type. */
	  val = FUNC2 (expr);
	  type = FUNC0 (val);
	}
      if (type != NULL)
	{
	  FUNC5 (type, 0);
	}
      FUNC1 (old_chain);
    }
}