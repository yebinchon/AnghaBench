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
typedef  enum noside { ____Placeholder_noside } noside ;
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 int EVAL_AVOID_SIDE_EFFECTS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 
#define  UNOP_COMPLEMENT 135 
#define  UNOP_IND 134 
#define  UNOP_LOGICAL_NOT 133 
#define  UNOP_NEG 132 
#define  UNOP_POSTDECREMENT 131 
#define  UNOP_POSTINCREMENT 130 
#define  UNOP_PREDECREMENT 129 
#define  UNOP_PREINCREMENT 128 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct value* FUNC7 (struct value*,int,struct value**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 struct value* FUNC11 (struct value*) ; 
 struct value* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct value* FUNC13 (struct value**,struct value**,char*,int*,char*) ; 
 struct value* FUNC14 (struct type*,int /*<<< orphan*/ ) ; 

struct value *
FUNC15 (struct value *arg1, enum exp_opcode op, enum noside noside)
{
  struct value **argvec;
  char *ptr, *mangle_ptr;
  char tstr[13], mangle_tstr[13];
  int static_memfuncp, nargs;

  FUNC1 (arg1);
  FUNC0 (arg1);

  /* now we know that what we have to do is construct our
     arg vector and find the right function to call it with.  */

  if (FUNC2 (FUNC8 (FUNC5 (arg1))) != TYPE_CODE_STRUCT)
    FUNC9 ("Can't do that unary op on that type");	/* FIXME be explicit */

  argvec = (struct value **) FUNC6 (sizeof (struct value *) * 4);
  argvec[1] = FUNC11 (arg1);
  argvec[2] = 0;

  nargs = 1;

  /* make the right function name up */
  FUNC10 (tstr, "operator__");
  ptr = tstr + 8;
  FUNC10 (mangle_tstr, "__");
  mangle_ptr = mangle_tstr + 2;
  switch (op)
    {
    case UNOP_PREINCREMENT:
      FUNC10 (ptr, "++");
      break;
    case UNOP_PREDECREMENT:
      FUNC10 (ptr, "--");
      break;
    case UNOP_POSTINCREMENT:
      FUNC10 (ptr, "++");
      argvec[2] = FUNC12 (builtin_type_int, 0);
      argvec[3] = 0;
      nargs ++;
      break;
    case UNOP_POSTDECREMENT:
      FUNC10 (ptr, "--");
      argvec[2] = FUNC12 (builtin_type_int, 0);
      argvec[3] = 0;
      nargs ++;
      break;
    case UNOP_LOGICAL_NOT:
      FUNC10 (ptr, "!");
      break;
    case UNOP_COMPLEMENT:
      FUNC10 (ptr, "~");
      break;
    case UNOP_NEG:
      FUNC10 (ptr, "-");
      break;
    case UNOP_IND:
      FUNC10 (ptr, "*");
      break;
    default:
      FUNC9 ("Invalid unary operation specified.");
    }

  argvec[0] = FUNC13 (&arg1, argvec + 1, tstr, &static_memfuncp, "structure");

  if (argvec[0])
    {
      if (static_memfuncp)
	{
	  argvec[1] = argvec[0];
	  nargs --;
	  argvec++;
	}
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
	{
	  struct type *return_type;
	  return_type
	    = FUNC3 (FUNC8 (FUNC5 (argvec[0])));
	  return FUNC14 (return_type, FUNC4 (arg1));
	}
      return FUNC7 (argvec[0], nargs, argvec + 1);
    }
  FUNC9 ("member function %s not found", tstr);
  return 0;			/* For lint -- never reached */
}