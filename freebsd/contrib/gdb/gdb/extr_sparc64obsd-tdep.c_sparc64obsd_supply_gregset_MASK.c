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
struct regset {int /*<<< orphan*/  descr; } ;
struct regcache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regcache*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct regcache*,int,char const*) ; 

__attribute__((used)) static void
FUNC2 (const struct regset *regset,
			    struct regcache *regcache,
			    int regnum, const void *gregs, size_t len)
{
  const char *regs = gregs;

  FUNC1 (regset->descr, regcache, regnum, regs);
  FUNC0 (regcache, regnum, regs + 288);
}