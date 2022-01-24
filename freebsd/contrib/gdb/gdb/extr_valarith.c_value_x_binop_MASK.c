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
#define  BINOP_ADD 151 
#define  BINOP_ASSIGN 150 
#define  BINOP_ASSIGN_MODIFY 149 
#define  BINOP_BITWISE_AND 148 
#define  BINOP_BITWISE_IOR 147 
#define  BINOP_BITWISE_XOR 146 
#define  BINOP_DIV 145 
#define  BINOP_EQUAL 144 
#define  BINOP_GEQ 143 
#define  BINOP_GTR 142 
#define  BINOP_LEQ 141 
#define  BINOP_LESS 140 
#define  BINOP_LOGICAL_AND 139 
#define  BINOP_LOGICAL_OR 138 
#define  BINOP_LSH 137 
#define  BINOP_MAX 136 
#define  BINOP_MIN 135 
#define  BINOP_MOD 134 
#define  BINOP_MUL 133 
#define  BINOP_NOTEQUAL 132 
#define  BINOP_REM 131 
#define  BINOP_RSH 130 
#define  BINOP_SUB 129 
#define  BINOP_SUBSCRIPT 128 
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 int EVAL_AVOID_SIDE_EFFECTS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 scalar_t__ FUNC6 (int) ; 
 struct value* FUNC7 (struct value*,int,struct value**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 struct value* FUNC11 (struct value*) ; 
 struct value* FUNC12 (struct value**,struct value**,char*,int*,char*) ; 
 struct value* FUNC13 (struct type*,int /*<<< orphan*/ ) ; 

struct value *
FUNC14 (struct value *arg1, struct value *arg2, enum exp_opcode op,
	       enum exp_opcode otherop, enum noside noside)
{
  struct value **argvec;
  char *ptr;
  char tstr[13];
  int static_memfuncp;

  FUNC1 (arg1);
  FUNC1 (arg2);
  FUNC0 (arg1);
  FUNC0 (arg2);

  /* now we know that what we have to do is construct our
     arg vector and find the right function to call it with.  */

  if (FUNC2 (FUNC8 (FUNC5 (arg1))) != TYPE_CODE_STRUCT)
    FUNC9 ("Can't do that binary op on that type");	/* FIXME be explicit */

  argvec = (struct value **) FUNC6 (sizeof (struct value *) * 4);
  argvec[1] = FUNC11 (arg1);
  argvec[2] = arg2;
  argvec[3] = 0;

  /* make the right function name up */
  FUNC10 (tstr, "operator__");
  ptr = tstr + 8;
  switch (op)
    {
    case BINOP_ADD:
      FUNC10 (ptr, "+");
      break;
    case BINOP_SUB:
      FUNC10 (ptr, "-");
      break;
    case BINOP_MUL:
      FUNC10 (ptr, "*");
      break;
    case BINOP_DIV:
      FUNC10 (ptr, "/");
      break;
    case BINOP_REM:
      FUNC10 (ptr, "%");
      break;
    case BINOP_LSH:
      FUNC10 (ptr, "<<");
      break;
    case BINOP_RSH:
      FUNC10 (ptr, ">>");
      break;
    case BINOP_BITWISE_AND:
      FUNC10 (ptr, "&");
      break;
    case BINOP_BITWISE_IOR:
      FUNC10 (ptr, "|");
      break;
    case BINOP_BITWISE_XOR:
      FUNC10 (ptr, "^");
      break;
    case BINOP_LOGICAL_AND:
      FUNC10 (ptr, "&&");
      break;
    case BINOP_LOGICAL_OR:
      FUNC10 (ptr, "||");
      break;
    case BINOP_MIN:
      FUNC10 (ptr, "<?");
      break;
    case BINOP_MAX:
      FUNC10 (ptr, ">?");
      break;
    case BINOP_ASSIGN:
      FUNC10 (ptr, "=");
      break;
    case BINOP_ASSIGN_MODIFY:
      switch (otherop)
	{
	case BINOP_ADD:
	  FUNC10 (ptr, "+=");
	  break;
	case BINOP_SUB:
	  FUNC10 (ptr, "-=");
	  break;
	case BINOP_MUL:
	  FUNC10 (ptr, "*=");
	  break;
	case BINOP_DIV:
	  FUNC10 (ptr, "/=");
	  break;
	case BINOP_REM:
	  FUNC10 (ptr, "%=");
	  break;
	case BINOP_BITWISE_AND:
	  FUNC10 (ptr, "&=");
	  break;
	case BINOP_BITWISE_IOR:
	  FUNC10 (ptr, "|=");
	  break;
	case BINOP_BITWISE_XOR:
	  FUNC10 (ptr, "^=");
	  break;
	case BINOP_MOD:	/* invalid */
	default:
	  FUNC9 ("Invalid binary operation specified.");
	}
      break;
    case BINOP_SUBSCRIPT:
      FUNC10 (ptr, "[]");
      break;
    case BINOP_EQUAL:
      FUNC10 (ptr, "==");
      break;
    case BINOP_NOTEQUAL:
      FUNC10 (ptr, "!=");
      break;
    case BINOP_LESS:
      FUNC10 (ptr, "<");
      break;
    case BINOP_GTR:
      FUNC10 (ptr, ">");
      break;
    case BINOP_GEQ:
      FUNC10 (ptr, ">=");
      break;
    case BINOP_LEQ:
      FUNC10 (ptr, "<=");
      break;
    case BINOP_MOD:		/* invalid */
    default:
      FUNC9 ("Invalid binary operation specified.");
    }

  argvec[0] = FUNC12 (&arg1, argvec + 1, tstr, &static_memfuncp, "structure");

  if (argvec[0])
    {
      if (static_memfuncp)
	{
	  argvec[1] = argvec[0];
	  argvec++;
	}
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
	{
	  struct type *return_type;
	  return_type
	    = FUNC3 (FUNC8 (FUNC5 (argvec[0])));
	  return FUNC13 (return_type, FUNC4 (arg1));
	}
      return FUNC7 (argvec[0], 2 - static_memfuncp, argvec + 1);
    }
  FUNC9 ("member function %s not found", tstr);
#ifdef lint
  return call_function_by_hand (argvec[0], 2 - static_memfuncp, argvec + 1);
#endif
}