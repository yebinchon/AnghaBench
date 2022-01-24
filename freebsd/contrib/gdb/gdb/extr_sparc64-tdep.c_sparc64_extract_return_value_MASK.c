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
 scalar_t__ SPARC_F0_REGNUM ; 
 scalar_t__ SPARC_O0_REGNUM ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct regcache*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct regcache*,struct type*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct type*) ; 
 int FUNC7 (struct type*) ; 
 scalar_t__ FUNC8 (struct type*) ; 

__attribute__((used)) static void
FUNC9 (struct type *type, struct regcache *regcache,
			      void *valbuf)
{
  int len = FUNC1 (type);
  char buf[32];
  int i;

  if (FUNC8 (type))
    {
      /* Structure or Union return values.  */
      FUNC2 (len <= 32);

      for (i = 0; i < ((len + 7) / 8); i++)
	FUNC4 (regcache, SPARC_O0_REGNUM + i, buf + i * 8);
      if (FUNC0 (type) != TYPE_CODE_UNION)
	FUNC5 (regcache, type, buf, 0);
      FUNC3 (valbuf, buf, len);
    }
  else if (FUNC6 (type))
    {
      /* Floating return values.  */
      for (i = 0; i < len / 4; i++)
	FUNC4 (regcache, SPARC_F0_REGNUM + i, buf + i * 4);
      FUNC3 (valbuf, buf, len);
    }
  else
    {
      /* Integral and pointer return values.  */
      FUNC2 (FUNC7 (type));

      /* Just stripping off any unused bytes should preserve the
         signed-ness just fine.  */
      FUNC4 (regcache, SPARC_O0_REGNUM, buf);
      FUNC3 (valbuf, buf + 8 - len, len);
    }
}