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
struct regcache {int dummy; } ;

/* Variables and functions */
 int SPARC64_D0_REGNUM ; 
 int SPARC64_Q0_REGNUM ; 
 int SPARC_F0_REGNUM ; 
 int SPARC_F1_REGNUM ; 
 int FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 
 struct type* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct regcache*,int,char*) ; 
 scalar_t__ FUNC7 (struct type*) ; 
 scalar_t__ FUNC8 (struct type*) ; 

__attribute__((used)) static void
FUNC9 (struct regcache *regcache, struct type *type,
			       char *valbuf, int element, int bitpos)
{
  FUNC5 (element < 16);

  if (FUNC7 (type))
    {
      int len = FUNC2 (type);
      int regnum;

      if (len == 16)
	{
	  FUNC5 (bitpos == 0);
	  FUNC5 ((element % 2) == 0);

	  regnum = SPARC64_Q0_REGNUM + element / 2;
	  FUNC6 (regcache, regnum, valbuf);
	}
      else if (len == 8)
	{
	  FUNC5 (bitpos == 0 || bitpos == 64);

	  regnum = SPARC64_D0_REGNUM + element + bitpos / 64;
	  FUNC6 (regcache, regnum, valbuf + (bitpos / 8));
	}
      else
	{
	  FUNC5 (len == 4);
	  FUNC5 (bitpos % 32 == 0 && bitpos >= 0 && bitpos < 128);

	  regnum = SPARC_F0_REGNUM + element * 2 + bitpos / 32;
	  FUNC6 (regcache, regnum, valbuf + (bitpos / 8));
	}
    }
  else if (FUNC8 (type))
    {
      int i;

      for (i = 0; i < FUNC3 (type); i++)
	{
	  struct type *subtype = FUNC4 (FUNC1 (type, i));
	  int subpos = bitpos + FUNC0 (type, i);

	  FUNC9 (regcache, subtype, valbuf,
					 element, subpos);
	}

      /* GCC has an interesting bug.  If TYPE is a structure that has
         a single `float' member, GCC doesn't treat it as a structure
         at all, but rather as an ordinary `float' argument.  This
         argument will be stored in %f1, as required by the psABI.
         However, as a member of a structure the psABI requires it to
         be stored in %f0.  This bug is present in GCC 3.3.2, but
         probably in older releases to.  To appease GCC, if a
         structure has only a single `float' member, we store its
         value in %f1 too (we already have stored in %f0).  */
      if (FUNC3 (type) == 1)
	{
	  struct type *subtype = FUNC4 (FUNC1 (type, 0));

	  if (FUNC7 (subtype) && FUNC2 (subtype) == 4)
	    FUNC6 (regcache, SPARC_F1_REGNUM, valbuf);
	}
    }
}