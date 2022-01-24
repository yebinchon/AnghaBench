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
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
typedef  unsigned int ULONGEST ;
typedef  unsigned int LONGEST ;
typedef  unsigned int DOUBLEST ;

/* Variables and functions */
#define  BINOP_ADD 146 
#define  BINOP_BITWISE_AND 145 
#define  BINOP_BITWISE_IOR 144 
#define  BINOP_BITWISE_XOR 143 
#define  BINOP_DIV 142 
#define  BINOP_EQUAL 141 
#define  BINOP_EXP 140 
#define  BINOP_LESS 139 
#define  BINOP_LOGICAL_AND 138 
#define  BINOP_LOGICAL_OR 137 
#define  BINOP_LSH 136 
#define  BINOP_MAX 135 
#define  BINOP_MIN 134 
#define  BINOP_MOD 133 
#define  BINOP_MUL 132 
#define  BINOP_NOTEQUAL 131 
#define  BINOP_REM 130 
#define  BINOP_RSH 129 
#define  BINOP_SUB 128 
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 unsigned int HOST_CHAR_BIT ; 
 int TARGET_DOUBLE_BIT ; 
 unsigned int TARGET_LONG_BIT ; 
 int /*<<< orphan*/  TRUNCATION_TOWARDS_ZERO ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_BOOL ; 
 scalar_t__ TYPE_CODE_CHAR ; 
 scalar_t__ TYPE_CODE_FLT ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ TYPE_CODE_RANGE ; 
 unsigned int FUNC3 (struct type*) ; 
 int FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 struct type* FUNC6 (struct value*) ; 
 struct value* FUNC7 (struct type*) ; 
 struct type* builtin_type_double ; 
 struct type* builtin_type_int ; 
 struct type* builtin_type_long ; 
 struct type* builtin_type_long_double ; 
 struct type* builtin_type_long_long ; 
 struct type* builtin_type_unsigned_long ; 
 struct type* builtin_type_unsigned_long_long ; 
 struct type* FUNC8 (struct type*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 unsigned int FUNC10 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct type*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC15 (struct value*) ; 
 unsigned int FUNC16 (struct value*) ; 

struct value *
FUNC17 (struct value *arg1, struct value *arg2, enum exp_opcode op)
{
  struct value *val;
  struct type *type1, *type2;

  FUNC1 (arg1);
  FUNC1 (arg2);
  FUNC0 (arg1);
  FUNC0 (arg2);
  type1 = FUNC8 (FUNC6 (arg1));
  type2 = FUNC8 (FUNC6 (arg2));

  if ((FUNC2 (type1) != TYPE_CODE_FLT
       && FUNC2 (type1) != TYPE_CODE_CHAR
       && FUNC2 (type1) != TYPE_CODE_INT
       && FUNC2 (type1) != TYPE_CODE_BOOL
       && FUNC2 (type1) != TYPE_CODE_RANGE)
      ||
      (FUNC2 (type2) != TYPE_CODE_FLT
       && FUNC2 (type2) != TYPE_CODE_CHAR
       && FUNC2 (type2) != TYPE_CODE_INT
       && FUNC2 (type2) != TYPE_CODE_BOOL
       && FUNC2 (type2) != TYPE_CODE_RANGE))
    FUNC9 ("Argument to arithmetic operation not a number or boolean.");

  if (FUNC2 (type1) == TYPE_CODE_FLT
      ||
      FUNC2 (type2) == TYPE_CODE_FLT)
    {
      /* FIXME-if-picky-about-floating-accuracy: Should be doing this
         in target format.  real.c in GCC probably has the necessary
         code.  */
      DOUBLEST v1, v2, v = 0;
      v1 = FUNC15 (arg1);
      v2 = FUNC15 (arg2);
      switch (op)
	{
	case BINOP_ADD:
	  v = v1 + v2;
	  break;

	case BINOP_SUB:
	  v = v1 - v2;
	  break;

	case BINOP_MUL:
	  v = v1 * v2;
	  break;

	case BINOP_DIV:
	  v = v1 / v2;
	  break;

        case BINOP_EXP:
          v = FUNC10 (v1, v2);
          if (errno)
            FUNC9 ("Cannot perform exponentiation: %s", FUNC11 (errno));
          break;

	default:
	  FUNC9 ("Integer-only operation on floating point number.");
	}

      /* If either arg was long double, make sure that value is also long
         double.  */

      if (FUNC3 (type1) * 8 > TARGET_DOUBLE_BIT
	  || FUNC3 (type2) * 8 > TARGET_DOUBLE_BIT)
	val = FUNC7 (builtin_type_long_double);
      else
	val = FUNC7 (builtin_type_double);

      FUNC13 (FUNC5 (val), FUNC6 (val), v);
    }
  else if (FUNC2 (type1) == TYPE_CODE_BOOL
	   &&
	   FUNC2 (type2) == TYPE_CODE_BOOL)
    {
      LONGEST v1, v2, v = 0;
      v1 = FUNC16 (arg1);
      v2 = FUNC16 (arg2);

      switch (op)
	{
	case BINOP_BITWISE_AND:
	  v = v1 & v2;
	  break;

	case BINOP_BITWISE_IOR:
	  v = v1 | v2;
	  break;

	case BINOP_BITWISE_XOR:
	  v = v1 ^ v2;
          break;
              
        case BINOP_EQUAL:
          v = v1 == v2;
          break;
          
        case BINOP_NOTEQUAL:
          v = v1 != v2;
	  break;

	default:
	  FUNC9 ("Invalid operation on booleans.");
	}

      val = FUNC7 (type1);
      FUNC12 (FUNC5 (val),
			    FUNC3 (type1),
			    v);
    }
  else
    /* Integral operations here.  */
    /* FIXME:  Also mixed integral/booleans, with result an integer. */
    /* FIXME: This implements ANSI C rules (also correct for C++).
       What about FORTRAN and (the deleted) chill ?  */
    {
      unsigned int promoted_len1 = FUNC3 (type1);
      unsigned int promoted_len2 = FUNC3 (type2);
      int is_unsigned1 = FUNC4 (type1);
      int is_unsigned2 = FUNC4 (type2);
      unsigned int result_len;
      int unsigned_operation;

      /* Determine type length and signedness after promotion for
         both operands.  */
      if (promoted_len1 < FUNC3 (builtin_type_int))
	{
	  is_unsigned1 = 0;
	  promoted_len1 = FUNC3 (builtin_type_int);
	}
      if (promoted_len2 < FUNC3 (builtin_type_int))
	{
	  is_unsigned2 = 0;
	  promoted_len2 = FUNC3 (builtin_type_int);
	}

      /* Determine type length of the result, and if the operation should
         be done unsigned.
         Use the signedness of the operand with the greater length.
         If both operands are of equal length, use unsigned operation
         if one of the operands is unsigned.  */
      if (promoted_len1 > promoted_len2)
	{
	  unsigned_operation = is_unsigned1;
	  result_len = promoted_len1;
	}
      else if (promoted_len2 > promoted_len1)
	{
	  unsigned_operation = is_unsigned2;
	  result_len = promoted_len2;
	}
      else
	{
	  unsigned_operation = is_unsigned1 || is_unsigned2;
	  result_len = promoted_len1;
	}

      if (unsigned_operation)
	{
	  ULONGEST v1, v2, v = 0;
	  v1 = (ULONGEST) FUNC16 (arg1);
	  v2 = (ULONGEST) FUNC16 (arg2);

	  /* Truncate values to the type length of the result.  */
	  if (result_len < sizeof (ULONGEST))
	    {
	      v1 &= ((LONGEST) 1 << HOST_CHAR_BIT * result_len) - 1;
	      v2 &= ((LONGEST) 1 << HOST_CHAR_BIT * result_len) - 1;
	    }

	  switch (op)
	    {
	    case BINOP_ADD:
	      v = v1 + v2;
	      break;

	    case BINOP_SUB:
	      v = v1 - v2;
	      break;

	    case BINOP_MUL:
	      v = v1 * v2;
	      break;

	    case BINOP_DIV:
	      v = v1 / v2;
	      break;

            case BINOP_EXP:
              v = FUNC10 (v1, v2);
              if (errno)
                FUNC9 ("Cannot perform exponentiation: %s", FUNC11 (errno));
              break;

	    case BINOP_REM:
	      v = v1 % v2;
	      break;

	    case BINOP_MOD:
	      /* Knuth 1.2.4, integer only.  Note that unlike the C '%' op,
	         v1 mod 0 has a defined value, v1. */
	      if (v2 == 0)
		{
		  v = v1;
		}
	      else
		{
		  v = v1 / v2;
		  /* Note floor(v1/v2) == v1/v2 for unsigned. */
		  v = v1 - (v2 * v);
		}
	      break;

	    case BINOP_LSH:
	      v = v1 << v2;
	      break;

	    case BINOP_RSH:
	      v = v1 >> v2;
	      break;

	    case BINOP_BITWISE_AND:
	      v = v1 & v2;
	      break;

	    case BINOP_BITWISE_IOR:
	      v = v1 | v2;
	      break;

	    case BINOP_BITWISE_XOR:
	      v = v1 ^ v2;
	      break;

	    case BINOP_LOGICAL_AND:
	      v = v1 && v2;
	      break;

	    case BINOP_LOGICAL_OR:
	      v = v1 || v2;
	      break;

	    case BINOP_MIN:
	      v = v1 < v2 ? v1 : v2;
	      break;

	    case BINOP_MAX:
	      v = v1 > v2 ? v1 : v2;
	      break;

	    case BINOP_EQUAL:
	      v = v1 == v2;
	      break;

            case BINOP_NOTEQUAL:
              v = v1 != v2;
              break;

	    case BINOP_LESS:
	      v = v1 < v2;
	      break;

	    default:
	      FUNC9 ("Invalid binary operation on numbers.");
	    }

	  /* This is a kludge to get around the fact that we don't
	     know how to determine the result type from the types of
	     the operands.  (I'm not really sure how much we feel the
	     need to duplicate the exact rules of the current
	     language.  They can get really hairy.  But not to do so
	     makes it hard to document just what we *do* do).  */

	  /* Can't just call init_type because we wouldn't know what
	     name to give the type.  */
	  val = FUNC7
	    (result_len > TARGET_LONG_BIT / HOST_CHAR_BIT
	     ? builtin_type_unsigned_long_long
	     : builtin_type_unsigned_long);
	  FUNC14 (FUNC5 (val),
				  FUNC3 (FUNC6 (val)),
				  v);
	}
      else
	{
	  LONGEST v1, v2, v = 0;
	  v1 = FUNC16 (arg1);
	  v2 = FUNC16 (arg2);

	  switch (op)
	    {
	    case BINOP_ADD:
	      v = v1 + v2;
	      break;

	    case BINOP_SUB:
	      v = v1 - v2;
	      break;

	    case BINOP_MUL:
	      v = v1 * v2;
	      break;

	    case BINOP_DIV:
	      v = v1 / v2;
              break;

            case BINOP_EXP:
              v = FUNC10 (v1, v2);
              if (errno)
                FUNC9 ("Cannot perform exponentiation: %s", FUNC11 (errno));
	      break;

	    case BINOP_REM:
	      v = v1 % v2;
	      break;

	    case BINOP_MOD:
	      /* Knuth 1.2.4, integer only.  Note that unlike the C '%' op,
	         X mod 0 has a defined value, X. */
	      if (v2 == 0)
		{
		  v = v1;
		}
	      else
		{
		  v = v1 / v2;
		  /* Compute floor. */
		  if (TRUNCATION_TOWARDS_ZERO && (v < 0) && ((v1 % v2) != 0))
		    {
		      v--;
		    }
		  v = v1 - (v2 * v);
		}
	      break;

	    case BINOP_LSH:
	      v = v1 << v2;
	      break;

	    case BINOP_RSH:
	      v = v1 >> v2;
	      break;

	    case BINOP_BITWISE_AND:
	      v = v1 & v2;
	      break;

	    case BINOP_BITWISE_IOR:
	      v = v1 | v2;
	      break;

	    case BINOP_BITWISE_XOR:
	      v = v1 ^ v2;
	      break;

	    case BINOP_LOGICAL_AND:
	      v = v1 && v2;
	      break;

	    case BINOP_LOGICAL_OR:
	      v = v1 || v2;
	      break;

	    case BINOP_MIN:
	      v = v1 < v2 ? v1 : v2;
	      break;

	    case BINOP_MAX:
	      v = v1 > v2 ? v1 : v2;
	      break;

	    case BINOP_EQUAL:
	      v = v1 == v2;
	      break;

	    case BINOP_LESS:
	      v = v1 < v2;
	      break;

	    default:
	      FUNC9 ("Invalid binary operation on numbers.");
	    }

	  /* This is a kludge to get around the fact that we don't
	     know how to determine the result type from the types of
	     the operands.  (I'm not really sure how much we feel the
	     need to duplicate the exact rules of the current
	     language.  They can get really hairy.  But not to do so
	     makes it hard to document just what we *do* do).  */

	  /* Can't just call init_type because we wouldn't know what
	     name to give the type.  */
	  val = FUNC7
	    (result_len > TARGET_LONG_BIT / HOST_CHAR_BIT
	     ? builtin_type_long_long
	     : builtin_type_long);
	  FUNC12 (FUNC5 (val),
				FUNC3 (FUNC6 (val)),
				v);
	}
    }

  return val;
}