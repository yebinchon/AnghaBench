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
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int SPARC32_D0_REGNUM ; 
 int SPARC32_D30_REGNUM ; 
 int SPARC_F0_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,int,char*) ; 

__attribute__((used)) static void
FUNC2 (struct gdbarch *gdbarch,
			      struct regcache *regcache,
			      int regnum, void *buf)
{
  FUNC0 (regnum >= SPARC32_D0_REGNUM && regnum <= SPARC32_D30_REGNUM);

  regnum = SPARC_F0_REGNUM + 2 * (regnum - SPARC32_D0_REGNUM);
  FUNC1 (regcache, regnum, buf);
  FUNC1 (regcache, regnum + 1, ((char *)buf) + 4);
}