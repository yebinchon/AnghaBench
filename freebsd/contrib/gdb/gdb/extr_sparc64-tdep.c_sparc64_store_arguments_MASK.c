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
struct regcache {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 scalar_t__ BIAS ; 
 int SPARC64_D0_REGNUM ; 
 int SPARC64_D10_REGNUM ; 
 int SPARC64_Q0_REGNUM ; 
 int SPARC64_Q8_REGNUM ; 
 int SPARC_O0_REGNUM ; 
 int FUNC0 (struct type*) ; 
 char* FUNC1 (struct value*) ; 
 struct type* FUNC2 (struct value*) ; 
 int /*<<< orphan*/  builtin_type_int64 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 char* FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct regcache*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct regcache*,int,int) ; 
 scalar_t__ FUNC9 (struct type*) ; 
 scalar_t__ FUNC10 (struct type*) ; 
 int FUNC11 (struct type*) ; 
 int /*<<< orphan*/  FUNC12 (struct regcache*,struct type*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct type*) ; 
 struct value* FUNC14 (int /*<<< orphan*/ ,struct value*) ; 
 struct value* FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC17 (struct regcache *regcache, int nargs,
			 struct value **args, CORE_ADDR sp,
			 int struct_return, CORE_ADDR struct_addr)
{
  /* Number of extended words in the "parameter array".  */
  int num_elements = 0;
  int element = 0;
  int i;

  /* Take BIAS into account.  */
  sp += BIAS;

  /* First we calculate the number of extended words in the "parameter
     array".  While doing so we also convert some of the arguments.  */

  if (struct_return)
    num_elements++;

  for (i = 0; i < nargs; i++)
    {
      struct type *type = FUNC2 (args[i]);
      int len = FUNC0 (type);

      if (FUNC13 (type))
	{
	  /* Structure or Union arguments.  */
	  if (len <= 16)
	    {
	      if (num_elements % 2 && FUNC9 (type))
		num_elements++;
	      num_elements += ((len + 7) / 8);
	    }
	  else
	    {
	      /* The psABI says that "Structures or unions larger than
		 sixteen bytes are copied by the caller and passed
		 indirectly; the caller will pass the address of a
		 correctly aligned structure value.  This sixty-four
		 bit address will occupy one word in the parameter
		 array, and may be promoted to an %o register like any
		 other pointer value."  Allocate memory for these
		 values on the stack.  */
	      sp -= len;

	      /* Use 16-byte alignment for these values.  That's
                 always correct, and wasting a few bytes shouldn't be
                 a problem.  */
	      sp &= ~0xf;

	      FUNC16 (sp, FUNC1 (args[i]), len);
	      args[i] = FUNC15 (FUNC4 (type), sp);
	      num_elements++;
	    }
	}
      else if (FUNC10 (type))
	{
	  /* Floating arguments.  */

	  if (len == 16)
	    {
	      /* The psABI says that "Each quad-precision parameter
                 value will be assigned to two extended words in the
                 parameter array.  */
	      num_elements += 2;

	      /* The psABI says that "Long doubles must be
                 quad-aligned, and thus a hole might be introduced
                 into the parameter array to force alignment."  Skip
                 an element if necessary.  */
	      if (num_elements % 2)
		num_elements++;
	    }
	  else
	    num_elements++;
	}
      else
	{
	  /* Integral and pointer arguments.  */
	  FUNC3 (FUNC11 (type));

	  /* The psABI says that "Each argument value of integral type
	     smaller than an extended word will be widened by the
	     caller to an extended word according to the signed-ness
	     of the argument type."  */
	  if (len < 8)
	    args[i] = FUNC14 (builtin_type_int64, args[i]);
	  num_elements++;
	}
    }

  /* Allocate the "parameter array".  */
  sp -= num_elements * 8;

  /* The psABI says that "Every stack frame must be 16-byte aligned."  */
  sp &= ~0xf;

  /* Now we store the arguments in to the "paramater array".  Some
     Integer or Pointer arguments and Structure or Union arguments
     will be passed in %o registers.  Some Floating arguments and
     floating members of structures are passed in floating-point
     registers.  However, for functions with variable arguments,
     floating arguments are stored in an %0 register, and for
     functions without a prototype floating arguments are stored in
     both a floating-point and an %o registers, or a floating-point
     register and memory.  To simplify the logic here we always pass
     arguments in memory, an %o register, and a floating-point
     register if appropriate.  This should be no problem since the
     contents of any unused memory or registers in the "parameter
     array" are undefined.  */

  if (struct_return)
    {
      FUNC8 (regcache, SPARC_O0_REGNUM, struct_addr);
      element++;
    }

  for (i = 0; i < nargs; i++)
    {
      char *valbuf = FUNC1 (args[i]);
      struct type *type = FUNC2 (args[i]);
      int len = FUNC0 (type);
      int regnum = -1;
      char buf[16];

      if (FUNC13 (type))
	{
	  /* Structure or Union arguments.  */
	  FUNC3 (len <= 16);
	  FUNC6 (buf, 0, sizeof (buf));
	  valbuf = FUNC5 (buf, valbuf, len);

	  if (element % 2 && FUNC9 (type))
	    element++;

	  if (element < 6)
	    {
	      regnum = SPARC_O0_REGNUM + element;
	      if (len > 8 && element < 5)
		FUNC7 (regcache, regnum + 1, valbuf + 8);
	    }

	  if (element < 16)
	    FUNC12 (regcache, type, valbuf, element, 0);
	}
      else if (FUNC10 (type))
	{
	  /* Floating arguments.  */
	  if (len == 16)
	    {
	      if (element % 2)
		element++;
	      if (element < 16)
		regnum = SPARC64_Q0_REGNUM + element / 2;
	    }
	  else if (len == 8)
	    {
	      if (element < 16)
		regnum = SPARC64_D0_REGNUM + element;
	    }
	  else
	    {
	      /* The psABI says "Each single-precision parameter value
                 will be assigned to one extended word in the
                 parameter array, and right-justified within that
                 word; the left half (even floatregister) is
                 undefined."  Even though the psABI says that "the
                 left half is undefined", set it to zero here.  */
	      FUNC6 (buf, 0, 4);
	      FUNC5 (buf + 4, valbuf, 4);
	      valbuf = buf;
	      len = 8;
	      if (element < 16)
		regnum = SPARC64_D0_REGNUM + element;
	    }
	}
      else
	{
	  /* Integral and pointer arguments.  */
	  FUNC3 (len == 8);
	  if (element < 6)
	    regnum = SPARC_O0_REGNUM + element;
	}

      if (regnum != -1)
	{
	  FUNC7 (regcache, regnum, valbuf);

	  /* If we're storing the value in a floating-point register,
             also store it in the corresponding %0 register(s).  */
	  if (regnum >= SPARC64_D0_REGNUM && regnum <= SPARC64_D10_REGNUM)
	    {
	      FUNC3 (element < 6);
	      regnum = SPARC_O0_REGNUM + element;
	      FUNC7 (regcache, regnum, valbuf);
	    }
	  else if (regnum >= SPARC64_Q0_REGNUM && regnum <= SPARC64_Q8_REGNUM)
	    {
	      FUNC3 (element < 6);
	      regnum = SPARC_O0_REGNUM + element;
	      FUNC7 (regcache, regnum, valbuf);
	      FUNC7 (regcache, regnum + 1, valbuf);
	    }
	}

      /* Always store the argument in memeory.  */
      FUNC16 (sp + element * 8, valbuf, len);
      element += ((len + 7) / 8);
    }

  FUNC3 (element == num_elements);

  /* Take BIAS into account.  */
  sp -= BIAS;
  return sp;
}