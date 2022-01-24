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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(const char *currdev_in)
{
	char *beroot, *currdev;
	int currdev_len;

	currdev = NULL;
	currdev_len = FUNC4(currdev_in);
	if (currdev_len == 0)
		return;
	if (FUNC5(currdev_in, "zfs:", 4) != 0)
		return;
	currdev = FUNC3(currdev_in);
	if (currdev == NULL)
		return;
	/* Remove the trailing : */
	currdev[currdev_len - 1] = '\0';
	FUNC1("zfs_be_active", currdev, 1);
	FUNC1("zfs_be_currpage", "1", 1);
	/* Remove the last element (current bootenv) */
	beroot = FUNC6(currdev, '/');
	if (beroot != NULL)
		beroot[0] = '\0';
	beroot = FUNC2(currdev, ':') + 1;
	FUNC1("zfs_be_root", beroot, 1);
	FUNC7(beroot);
	FUNC0(currdev);
}