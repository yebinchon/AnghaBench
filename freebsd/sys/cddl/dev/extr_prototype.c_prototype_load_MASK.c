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
 int /*<<< orphan*/  DTRACE_PRIV_USER ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  prototype_attr ; 
 int /*<<< orphan*/  prototype_cdev ; 
 int /*<<< orphan*/  prototype_cdevsw ; 
 int /*<<< orphan*/  prototype_id ; 
 int /*<<< orphan*/  prototype_pops ; 

__attribute__((used)) static void
FUNC2(void *dummy)
{
	/* Create the /dev/dtrace/prototype entry. */
	prototype_cdev = FUNC1(&prototype_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
	    "dtrace/prototype");

	if (FUNC0("prototype", &prototype_attr, DTRACE_PRIV_USER,
	    NULL, &prototype_pops, NULL, &prototype_id) != 0)
		return;
}