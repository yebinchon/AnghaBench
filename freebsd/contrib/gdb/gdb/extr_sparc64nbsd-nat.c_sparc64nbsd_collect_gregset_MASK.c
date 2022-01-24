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
struct sparc_gregset {int dummy; } ;
struct regcache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct regcache const*,int,void*) ; 
 int /*<<< orphan*/  sparc32nbsd_gregset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct regcache const*,int,void*) ; 
 int /*<<< orphan*/  sparc64nbsd_gregset ; 

__attribute__((used)) static void
FUNC3 (const struct sparc_gregset *gregset,
			     const struct regcache *regcache,
			     int regnum, void *gregs)
{
  int sparc32 = (FUNC0 (current_gdbarch) == 32);

  if (sparc32)
    FUNC1 (&sparc32nbsd_gregset, regcache, regnum, gregs);
  else
    FUNC2 (&sparc64nbsd_gregset, regcache, regnum, gregs);
}