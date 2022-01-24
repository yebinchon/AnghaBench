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
typedef  int CORE_ADDR ;

/* Variables and functions */
 int SPARC_O0_REGNUM ; 
 int FUNC0 (struct type*) ; 
 char* FUNC1 (struct value*) ; 
 struct type* FUNC2 (struct value*) ; 
 int /*<<< orphan*/  builtin_type_int32 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct regcache*,int,char*) ; 
 scalar_t__ FUNC7 (struct type*) ; 
 int FUNC8 (struct type*) ; 
 scalar_t__ FUNC9 (struct type*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 struct value* FUNC11 (int /*<<< orphan*/ ,struct value*) ; 
 struct value* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC14 (struct regcache *regcache, int nargs,
			 struct value **args, CORE_ADDR sp,
			 int struct_return, CORE_ADDR struct_addr)
{
  /* Number of words in the "parameter array".  */
  int num_elements = 0;
  int element = 0;
  int i;

  for (i = 0; i < nargs; i++)
    {
      struct type *type = FUNC2 (args[i]);
      int len = FUNC0 (type);

      if (FUNC9 (type)
	  || (FUNC7 (type) && len == 16))
	{
	  /* Structure, Union and Quad-Precision Arguments.  */
	  sp -= len;

	  /* Use doubleword alignment for these values.  That's always
             correct, and wasting a few bytes shouldn't be a problem.  */
	  sp &= ~0x7;

	  FUNC13 (sp, FUNC1 (args[i]), len);
	  args[i] = FUNC12 (FUNC4 (type), sp);
	  num_elements++;
	}
      else if (FUNC7 (type))
	{
	  /* Floating arguments.  */
	  FUNC3 (len == 4 || len == 8);
	  num_elements += (len / 4);
	}
      else
	{
	  /* Integral and pointer arguments.  */
	  FUNC3 (FUNC8 (type));

	  if (len < 4)
	    args[i] = FUNC11 (builtin_type_int32, args[i]);
	  num_elements += ((len + 3) / 4);
	}
    }

  /* Always allocate at least six words.  */
  sp -= FUNC5 (6, num_elements) * 4;

  /* The psABI says that "Software convention requires space for the
     struct/union return value pointer, even if the word is unused."  */
  sp -= 4;

  /* The psABI says that "Although software convention and the
     operating system require every stack frame to be doubleword
     aligned."  */
  sp &= ~0x7;

  for (i = 0; i < nargs; i++)
    {
      char *valbuf = FUNC1 (args[i]);
      struct type *type = FUNC2 (args[i]);
      int len = FUNC0 (type);

      FUNC3 (len == 4 || len == 8);

      if (element < 6)
	{
	  int regnum = SPARC_O0_REGNUM + element;

	  FUNC6 (regcache, regnum, valbuf);
	  if (len > 4 && element < 5)
	    FUNC6 (regcache, regnum + 1, valbuf + 4);
	}

      /* Always store the argument in memory.  */
      FUNC13 (sp + 4 + element * 4, valbuf, len);
      element += len / 4;
    }

  FUNC3 (element == num_elements);

  if (struct_return)
    {
      char buf[4];

      FUNC10 (buf, 4, struct_addr);
      FUNC13 (sp, buf, 4);
    }

  return sp;
}