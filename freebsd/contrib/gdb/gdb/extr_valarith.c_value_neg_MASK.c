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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_BOOL ; 
 scalar_t__ TYPE_CODE_FLT ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct value*) ; 
 struct type* builtin_type_int ; 
 struct type* FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct value*) ; 
 int /*<<< orphan*/  FUNC8 (struct value*) ; 
 struct value* FUNC9 (struct type*,int /*<<< orphan*/ ) ; 
 struct value* FUNC10 (struct type*,int /*<<< orphan*/ ) ; 

struct value *
FUNC11 (struct value *arg1)
{
  struct type *type;
  struct type *result_type = FUNC4 (arg1);

  FUNC1 (arg1);
  FUNC0 (arg1);

  type = FUNC5 (FUNC4 (arg1));

  if (FUNC2 (type) == TYPE_CODE_FLT)
    return FUNC9 (result_type, -FUNC7 (arg1));
  else if (FUNC2 (type) == TYPE_CODE_INT || FUNC2 (type) == TYPE_CODE_BOOL)
    {
      /* Perform integral promotion for ANSI C/C++.  FIXME: What about
         FORTRAN and (the deleted) chill ?  */
      if (FUNC3 (type) < FUNC3 (builtin_type_int))
	result_type = builtin_type_int;

      return FUNC10 (result_type, -FUNC8 (arg1));
    }
  else
    {
      FUNC6 ("Argument to negate operation not a number.");
      return 0;			/* For lint -- never reached */
    }
}