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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ SPARC_F0_REGNUM ; 
 scalar_t__ SPARC_O0_REGNUM ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct regcache*,scalar_t__,char*) ; 
 scalar_t__ FUNC6 (struct type*) ; 
 int FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (struct regcache*,struct type*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct type*) ; 

__attribute__((used)) static void
FUNC10 (struct type *type, struct regcache *regcache,
			    const void *valbuf)
{
  int len = FUNC1 (type);
  char buf[16];
  int i;

  if (FUNC9 (type))
    {
      /* Structure or Union return values.  */
      FUNC2 (len <= 32);

      /* Simplify matters by storing the complete value (including
         floating members) into %o0 and %o1.  Floating members are
         also store in the appropriate floating-point registers.  */
      FUNC4 (buf, 0, sizeof (buf));
      FUNC3 (buf, valbuf, len);
      for (i = 0; i < ((len + 7) / 8); i++)
	FUNC5 (regcache, SPARC_O0_REGNUM + i, buf + i * 8);
      if (FUNC0 (type) != TYPE_CODE_UNION)
	FUNC8 (regcache, type, buf, 0, 0);
    }
  else if (FUNC6 (type))
    {
      /* Floating return values.  */
      FUNC3 (buf, valbuf, len);
      for (i = 0; i < len / 4; i++)
	FUNC5 (regcache, SPARC_F0_REGNUM + i, buf + i * 4);
    }
  else
    {
      /* Integral and pointer return values.  */
      FUNC2 (FUNC7 (type));

      /* ??? Do we need to do any sign-extension here?  */
      FUNC4 (buf, 0, 8);
      FUNC3 (buf + 8 - len, valbuf, len);
      FUNC5 (regcache, SPARC_O0_REGNUM, buf);
    }
}