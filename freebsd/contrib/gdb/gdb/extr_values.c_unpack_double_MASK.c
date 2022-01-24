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
struct type {int dummy; } ;
typedef  enum type_code { ____Placeholder_type_code } type_code ;
typedef  double ULONGEST ;
typedef  double DOUBLEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int FUNC1 (struct type*) ; 
 int TYPE_CODE_FLT ; 
 int FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 
 double FUNC4 (char const*,struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 double FUNC7 (struct type*,char const*) ; 

DOUBLEST
FUNC8 (struct type *type, const char *valaddr, int *invp)
{
  enum type_code code;
  int len;
  int nosign;

  *invp = 0;			/* Assume valid.   */
  FUNC0 (type);
  code = FUNC1 (type);
  len = FUNC2 (type);
  nosign = FUNC3 (type);
  if (code == TYPE_CODE_FLT)
    {
      /* NOTE: cagney/2002-02-19: There was a test here to see if the
	 floating-point value was valid (using the macro
	 INVALID_FLOAT).  That test/macro have been removed.

	 It turns out that only the VAX defined this macro and then
	 only in a non-portable way.  Fixing the portability problem
	 wouldn't help since the VAX floating-point code is also badly
	 bit-rotten.  The target needs to add definitions for the
	 methods TARGET_FLOAT_FORMAT and TARGET_DOUBLE_FORMAT - these
	 exactly describe the target floating-point format.  The
	 problem here is that the corresponding floatformat_vax_f and
	 floatformat_vax_d values these methods should be set to are
	 also not defined either.  Oops!

         Hopefully someone will add both the missing floatformat
         definitions and the new cases for floatformat_is_valid ().  */

      if (!FUNC6 (FUNC5 (type), valaddr))
	{
	  *invp = 1;
	  return 0.0;
	}

      return FUNC4 (valaddr, type);
    }
  else if (nosign)
    {
      /* Unsigned -- be sure we compensate for signed LONGEST.  */
      return (ULONGEST) FUNC7 (type, valaddr);
    }
  else
    {
      /* Signed -- we are OK with unpack_long.  */
      return FUNC7 (type, valaddr);
    }
}