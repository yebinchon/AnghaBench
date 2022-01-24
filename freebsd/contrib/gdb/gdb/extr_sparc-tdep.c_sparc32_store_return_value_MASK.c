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
 int /*<<< orphan*/  SPARC_F0_REGNUM ; 
 int /*<<< orphan*/  SPARC_F1_REGNUM ; 
 int /*<<< orphan*/  SPARC_O0_REGNUM ; 
 int /*<<< orphan*/  SPARC_O1_REGNUM ; 
 int FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct regcache*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 int FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (struct type*) ; 

__attribute__((used)) static void
FUNC7 (struct type *type, struct regcache *regcache,
			    const void *valbuf)
{
  int len = FUNC0 (type);
  char buf[8];

  FUNC1 (!FUNC6 (type));
  FUNC1 (!(FUNC4 (type) && len == 16));

  if (FUNC4 (type))
    {
      /* Floating return values.  */
      FUNC2 (buf, valbuf, len);
      FUNC3 (regcache, SPARC_F0_REGNUM, buf);
      if (len > 4)
	FUNC3 (regcache, SPARC_F1_REGNUM, buf + 4);
    }
  else
    {
      /* Integral and pointer return values.  */
      FUNC1 (FUNC5 (type));

      if (len > 4)
	{
	  FUNC1 (len == 8);
	  FUNC2 (buf, valbuf, 8);
	  FUNC3 (regcache, SPARC_O1_REGNUM, buf + 4);
	}
      else
	{
	  /* ??? Do we need to do any sign-extension here?  */
	  FUNC2 (buf + 4 - len, valbuf, len);
	}
      FUNC3 (regcache, SPARC_O0_REGNUM, buf);
    }
}