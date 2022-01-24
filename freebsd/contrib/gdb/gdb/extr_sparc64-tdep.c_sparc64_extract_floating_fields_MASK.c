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
				 char *valbuf, int bitpos)
{
  if (FUNC7 (type))
    {
      int len = FUNC2 (type);
      int regnum;

      if (len == 16)
	{
	  FUNC5 (bitpos == 0 || bitpos == 128);

	  regnum = SPARC64_Q0_REGNUM + bitpos / 128;
	  FUNC6 (regcache, regnum, valbuf + (bitpos / 8));
	}
      else if (len == 8)
	{
	  FUNC5 (bitpos % 64 == 0 && bitpos >= 0 && bitpos < 256);

	  regnum = SPARC64_D0_REGNUM + bitpos / 64;
	  FUNC6 (regcache, regnum, valbuf + (bitpos / 8));
	}
      else
	{
	  FUNC5 (len == 4);
	  FUNC5 (bitpos % 32 == 0 && bitpos >= 0 && bitpos < 256);

	  regnum = SPARC_F0_REGNUM + bitpos / 32;
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

	  FUNC9 (regcache, subtype, valbuf, subpos);
	}
    }
}