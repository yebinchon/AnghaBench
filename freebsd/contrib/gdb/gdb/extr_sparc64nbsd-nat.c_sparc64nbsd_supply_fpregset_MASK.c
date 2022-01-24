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
struct regcache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,int,void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache*,int,void const*) ; 

__attribute__((used)) static void
FUNC3 (struct regcache *regcache,
			     int regnum, const void *fpregs)
{
  int sparc32 = (FUNC0 (current_gdbarch) == 32);

  if (sparc32)
    FUNC1 (regcache, regnum, fpregs);
  else
    FUNC2 (regcache, regnum, fpregs);
}