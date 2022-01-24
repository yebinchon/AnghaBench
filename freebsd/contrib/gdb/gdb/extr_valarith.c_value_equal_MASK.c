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
 int /*<<< orphan*/  BINOP_EQUAL ; 
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int FUNC1 (struct type*) ; 
 int TYPE_CODE_BOOL ; 
 int TYPE_CODE_FLT ; 
 int TYPE_CODE_INT ; 
 int TYPE_CODE_PTR ; 
 int TYPE_CODE_STRING ; 
 scalar_t__ FUNC2 (struct type*) ; 
 char* FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct value*) ; 
 scalar_t__ FUNC9 (struct value*) ; 
 scalar_t__ FUNC10 (struct value*) ; 
 struct value* FUNC11 (struct value*,struct value*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct value*,struct value*) ; 

int
FUNC13 (struct value *arg1, struct value *arg2)
{
  int len;
  char *p1, *p2;
  struct type *type1, *type2;
  enum type_code code1;
  enum type_code code2;

  FUNC0 (arg1);
  FUNC0 (arg2);

  type1 = FUNC5 (FUNC4 (arg1));
  type2 = FUNC5 (FUNC4 (arg2));
  code1 = FUNC1 (type1);
  code2 = FUNC1 (type2);

  if ((code1 == TYPE_CODE_INT || code1 == TYPE_CODE_BOOL) &&
      (code2 == TYPE_CODE_INT || code2 == TYPE_CODE_BOOL))
    return FUNC7 (FUNC10 (FUNC11 (arg1, arg2,
						       BINOP_EQUAL)));
  else if ((code1 == TYPE_CODE_FLT || code1 == TYPE_CODE_INT || code1 == TYPE_CODE_BOOL)
	   && (code2 == TYPE_CODE_FLT || code2 == TYPE_CODE_INT || code2 == TYPE_CODE_BOOL))
    return FUNC9 (arg1) == FUNC9 (arg2);

  /* FIXME: Need to promote to either CORE_ADDR or LONGEST, whichever
     is bigger.  */
  else if (code1 == TYPE_CODE_PTR && (code2 == TYPE_CODE_INT || code2 == TYPE_CODE_BOOL))
    return FUNC8 (arg1) == (CORE_ADDR) FUNC10 (arg2);
  else if (code2 == TYPE_CODE_PTR && (code1 == TYPE_CODE_INT || code1 == TYPE_CODE_BOOL))
    return (CORE_ADDR) FUNC10 (arg1) == FUNC8 (arg2);

  else if (code1 == code2
	   && ((len = (int) FUNC2 (type1))
	       == (int) FUNC2 (type2)))
    {
      p1 = FUNC3 (arg1);
      p2 = FUNC3 (arg2);
      while (--len >= 0)
	{
	  if (*p1++ != *p2++)
	    break;
	}
      return len < 0;
    }
  else if (code1 == TYPE_CODE_STRING && code2 == TYPE_CODE_STRING)
    {
      return FUNC12 (arg1, arg2) == 0;
    }
  else
    {
      FUNC6 ("Invalid type combination in equality test.");
      return 0;			/* For lint -- never reached */
    }
}