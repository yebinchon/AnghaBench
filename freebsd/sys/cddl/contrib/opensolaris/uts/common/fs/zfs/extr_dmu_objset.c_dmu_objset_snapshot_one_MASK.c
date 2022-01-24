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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(const char *fsname, const char *snapname)
{
	int err;
	char *longsnap = FUNC4("%s@%s", fsname, snapname);
	nvlist_t *snaps = FUNC2();

	FUNC1(snaps, longsnap);
	FUNC5(longsnap);
	err = FUNC0(snaps, NULL, NULL);
	FUNC3(snaps);
	return (err);
}