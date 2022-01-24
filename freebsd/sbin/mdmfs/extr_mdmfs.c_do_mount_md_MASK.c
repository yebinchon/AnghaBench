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
 int /*<<< orphan*/  _PATH_MOUNT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mdname ; 
 int /*<<< orphan*/  mdsuffix ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  unit ; 

__attribute__((used)) static void
FUNC4(const char *args, const char *mtpoint)
{
	int rv;

	rv = FUNC1(NULL, "%s%s /dev/%s%d%s %s", _PATH_MOUNT, args,
	    mdname, unit, mdsuffix, mtpoint);
	if (rv)
		FUNC0(1, "mount exited %s %d", FUNC3(rv),
		    FUNC2(rv));
}