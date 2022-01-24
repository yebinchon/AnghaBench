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

/* Variables and functions */
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void const*) ; 
 int /*<<< orphan*/  sparc64fbsd_gregset ; 

void
FUNC1 (const void *gregs)
{
  FUNC0 (&sparc64fbsd_gregset, current_regcache, -1, gregs);
}