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
struct varobj {int updated; struct value* value; int /*<<< orphan*/  error; } ;
struct value {int dummy; } ;
struct expression {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct expression*,struct value**) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct expression**) ; 
 int /*<<< orphan*/  FUNC2 (struct value*,struct value*,struct value**) ; 
 int input_radix ; 
 int /*<<< orphan*/  FUNC3 (struct value*,struct value*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 scalar_t__ FUNC6 (struct varobj*) ; 
 int /*<<< orphan*/  FUNC7 (struct expression*) ; 

int
FUNC8 (struct varobj *var, char *expression)
{
  struct value *val;
  int error;
  int offset = 0;

  /* The argument "expression" contains the variable's new value.
     We need to first construct a legal expression for this -- ugh! */
  /* Does this cover all the bases? */
  struct expression *exp;
  struct value *value;
  int saved_input_radix = input_radix;

  if (var->value != NULL && FUNC6 (var) && !var->error)
    {
      char *s = expression;
      int i;

      input_radix = 10;		/* ALWAYS reset to decimal temporarily */
      if (!FUNC1 (&s, 0, 0, &exp))
	/* We cannot proceed without a well-formed expression. */
	return 0;
      if (!FUNC0 (exp, &value))
	{
	  /* We cannot proceed without a valid expression. */
	  FUNC7 (exp);
	  return 0;
	}

      if (!FUNC3 (var->value, value, &error))
        var->updated = 1;
      if (!FUNC2 (var->value, value, &val))
	return 0;
      FUNC5 (var->value);
      FUNC4 (val);
      var->value = val;
      input_radix = saved_input_radix;
      return 1;
    }

  return 0;
}