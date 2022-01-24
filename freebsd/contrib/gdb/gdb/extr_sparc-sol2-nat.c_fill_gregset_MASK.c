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
typedef  int /*<<< orphan*/  prgregset_t ;

/* Variables and functions */
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sparc_sol2_gregset ; 

void
FUNC1 (prgregset_t *gregs, int regnum)
{
  FUNC0 (&sparc_sol2_gregset, current_regcache, regnum, gregs);
}