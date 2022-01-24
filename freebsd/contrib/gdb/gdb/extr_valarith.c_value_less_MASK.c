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
typedef  enum type_code { ____Placeholder_type_code } type_code ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BINOP_LESS ; 
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int FUNC1 (struct type*) ; 
 int TYPE_CODE_BOOL ; 
 int TYPE_CODE_FLT ; 
 int TYPE_CODE_INT ; 
 int TYPE_CODE_PTR ; 
 int TYPE_CODE_STRING ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct value*) ; 
 scalar_t__ FUNC7 (struct value*) ; 
 scalar_t__ FUNC8 (struct value*) ; 
 struct value* FUNC9 (struct value*,struct value*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct value*,struct value*) ; 

int
FUNC11 (struct value *arg1, struct value *arg2)
{
  enum type_code code1;
  enum type_code code2;
  struct type *type1, *type2;

  FUNC0 (arg1);
  FUNC0 (arg2);

  type1 = FUNC3 (FUNC2 (arg1));
  type2 = FUNC3 (FUNC2 (arg2));
  code1 = FUNC1 (type1);
  code2 = FUNC1 (type2);

  if ((code1 == TYPE_CODE_INT || code1 == TYPE_CODE_BOOL) &&
      (code2 == TYPE_CODE_INT || code2 == TYPE_CODE_BOOL))
    return FUNC5 (FUNC8 (FUNC9 (arg1, arg2,
						       BINOP_LESS)));
  else if ((code1 == TYPE_CODE_FLT || code1 == TYPE_CODE_INT || code1 == TYPE_CODE_BOOL)
	   && (code2 == TYPE_CODE_FLT || code2 == TYPE_CODE_INT || code2 == TYPE_CODE_BOOL))
    return FUNC7 (arg1) < FUNC7 (arg2);
  else if (code1 == TYPE_CODE_PTR && code2 == TYPE_CODE_PTR)
    return FUNC6 (arg1) < FUNC6 (arg2);

  /* FIXME: Need to promote to either CORE_ADDR or LONGEST, whichever
     is bigger.  */
  else if (code1 == TYPE_CODE_PTR && (code2 == TYPE_CODE_INT || code2 == TYPE_CODE_BOOL))
    return FUNC6 (arg1) < (CORE_ADDR) FUNC8 (arg2);
  else if (code2 == TYPE_CODE_PTR && (code1 == TYPE_CODE_INT || code1 == TYPE_CODE_BOOL))
    return (CORE_ADDR) FUNC8 (arg1) < FUNC6 (arg2);
  else if (code1 == TYPE_CODE_STRING && code2 == TYPE_CODE_STRING)
    return FUNC10 (arg1, arg2) < 0;
  else
    {
      FUNC4 ("Invalid type combination in ordering comparison.");
      return 0;
    }
}