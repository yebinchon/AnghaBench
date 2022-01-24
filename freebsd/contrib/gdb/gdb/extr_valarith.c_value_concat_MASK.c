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
 int /*<<< orphan*/  FUNC0 (struct value*,struct type*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_BITSTRING ; 
 scalar_t__ TYPE_CODE_BOOL ; 
 scalar_t__ TYPE_CODE_CHAR ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ TYPE_CODE_STRING ; 
 int FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct type* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct value*) ; 
 struct value* FUNC12 (char*,int) ; 

struct value *
FUNC13 (struct value *arg1, struct value *arg2)
{
  struct value *inval1;
  struct value *inval2;
  struct value *outval = NULL;
  int inval1len, inval2len;
  int count, idx;
  char *ptr;
  char inchar;
  struct type *type1 = FUNC6 (FUNC4 (arg1));
  struct type *type2 = FUNC6 (FUNC4 (arg2));

  FUNC0 (arg1, type1);
  FUNC0 (arg2, type2);

  /* First figure out if we are dealing with two values to be concatenated
     or a repeat count and a value to be repeated.  INVAL1 is set to the
     first of two concatenated values, or the repeat count.  INVAL2 is set
     to the second of the two concatenated values or the value to be 
     repeated. */

  if (FUNC1 (type2) == TYPE_CODE_INT)
    {
      struct type *tmp = type1;
      type1 = tmp;
      tmp = type2;
      inval1 = arg2;
      inval2 = arg1;
    }
  else
    {
      inval1 = arg1;
      inval2 = arg2;
    }

  /* Now process the input values. */

  if (FUNC1 (type1) == TYPE_CODE_INT)
    {
      /* We have a repeat count.  Validate the second value and then
         construct a value repeated that many times. */
      if (FUNC1 (type2) == TYPE_CODE_STRING
	  || FUNC1 (type2) == TYPE_CODE_CHAR)
	{
	  count = FUNC8 (FUNC11 (inval1));
	  inval2len = FUNC2 (type2);
	  ptr = (char *) FUNC5 (count * inval2len);
	  if (FUNC1 (type2) == TYPE_CODE_CHAR)
	    {
	      inchar = (char) FUNC10 (type2,
					   FUNC3 (inval2));
	      for (idx = 0; idx < count; idx++)
		{
		  *(ptr + idx) = inchar;
		}
	    }
	  else
	    {
	      for (idx = 0; idx < count; idx++)
		{
		  FUNC9 (ptr + (idx * inval2len), FUNC3 (inval2),
			  inval2len);
		}
	    }
	  outval = FUNC12 (ptr, count * inval2len);
	}
      else if (FUNC1 (type2) == TYPE_CODE_BITSTRING
	       || FUNC1 (type2) == TYPE_CODE_BOOL)
	{
	  FUNC7 ("unimplemented support for bitstring/boolean repeats");
	}
      else
	{
	  FUNC7 ("can't repeat values of that type");
	}
    }
  else if (FUNC1 (type1) == TYPE_CODE_STRING
	   || FUNC1 (type1) == TYPE_CODE_CHAR)
    {
      /* We have two character strings to concatenate. */
      if (FUNC1 (type2) != TYPE_CODE_STRING
	  && FUNC1 (type2) != TYPE_CODE_CHAR)
	{
	  FUNC7 ("Strings can only be concatenated with other strings.");
	}
      inval1len = FUNC2 (type1);
      inval2len = FUNC2 (type2);
      ptr = (char *) FUNC5 (inval1len + inval2len);
      if (FUNC1 (type1) == TYPE_CODE_CHAR)
	{
	  *ptr = (char) FUNC10 (type1, FUNC3 (inval1));
	}
      else
	{
	  FUNC9 (ptr, FUNC3 (inval1), inval1len);
	}
      if (FUNC1 (type2) == TYPE_CODE_CHAR)
	{
	  *(ptr + inval1len) =
	    (char) FUNC10 (type2, FUNC3 (inval2));
	}
      else
	{
	  FUNC9 (ptr + inval1len, FUNC3 (inval2), inval2len);
	}
      outval = FUNC12 (ptr, inval1len + inval2len);
    }
  else if (FUNC1 (type1) == TYPE_CODE_BITSTRING
	   || FUNC1 (type1) == TYPE_CODE_BOOL)
    {
      /* We have two bitstrings to concatenate. */
      if (FUNC1 (type2) != TYPE_CODE_BITSTRING
	  && FUNC1 (type2) != TYPE_CODE_BOOL)
	{
	  FUNC7 ("Bitstrings or booleans can only be concatenated with other bitstrings or booleans.");
	}
      FUNC7 ("unimplemented support for bitstring/boolean concatenation.");
    }
  else
    {
      /* We don't know how to concatenate these operands. */
      FUNC7 ("illegal operands for concatenation.");
    }
  return (outval);
}