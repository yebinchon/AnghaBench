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
struct value {int dummy; } ;
struct type {int dummy; } ;
typedef  int LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  BINOP_SUB ; 
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 int /*<<< orphan*/  builtin_type_long ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct type*) ; 
 scalar_t__ FUNC8 (struct value*) ; 
 int FUNC9 (struct value*) ; 
 struct value* FUNC10 (struct value*,struct value*,int /*<<< orphan*/ ) ; 
 struct value* FUNC11 (int /*<<< orphan*/ ,int) ; 
 struct value* FUNC12 (struct type*,scalar_t__) ; 

struct value *
FUNC13 (struct value *arg1, struct value *arg2)
{
  struct type *type1, *type2;
  FUNC0 (arg1);
  FUNC0 (arg2);
  type1 = FUNC5 (FUNC4 (arg1));
  type2 = FUNC5 (FUNC4 (arg2));

  if (FUNC1 (type1) == TYPE_CODE_PTR)
    {
      if (FUNC1 (type2) == TYPE_CODE_INT)
	{
	  /* pointer - integer.  */
	  LONGEST sz = FUNC7 (type1);

	  return FUNC12 (type1,
				     (FUNC8 (arg1)
				      - (sz * FUNC9 (arg2))));
	}
      else if (FUNC1 (type2) == TYPE_CODE_PTR
	       && FUNC2 (FUNC5 (FUNC3 (type1)))
	       == FUNC2 (FUNC5 (FUNC3 (type2))))
	{
	  /* pointer to <type x> - pointer to <type x>.  */
	  LONGEST sz = FUNC2 (FUNC5 (FUNC3 (type1)));
	  return FUNC11
	    (builtin_type_long,	/* FIXME -- should be ptrdiff_t */
	     (FUNC9 (arg1) - FUNC9 (arg2)) / sz);
	}
      else
	{
	  FUNC6 ("\
First argument of `-' is a pointer and second argument is neither\n\
an integer nor a pointer of the same type.");
	}
    }

  return FUNC10 (arg1, arg2, BINOP_SUB);
}