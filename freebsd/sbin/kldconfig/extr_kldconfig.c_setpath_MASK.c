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
struct pathhead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  mib ; 
 scalar_t__ miblen ; 
 char* modpath ; 
 int /*<<< orphan*/  pathctl ; 
 char* FUNC3 (struct pathhead*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct pathhead *pathq)
{
	char *newpath;

	if (miblen == 0)
		FUNC2();
	if ((newpath = FUNC3(pathq)) == NULL) {
		errno = ENOMEM;
		FUNC0(1, "building path string");
	}
	if (FUNC5(mib, miblen, NULL, NULL, newpath, FUNC4(newpath)+1) == -1)
		FUNC0(1, "setting path: sysctl(%s)", pathctl);

	if (modpath != NULL)
		FUNC1(modpath);
	modpath = newpath;
}