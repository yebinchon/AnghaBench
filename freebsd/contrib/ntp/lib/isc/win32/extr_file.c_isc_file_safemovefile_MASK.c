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
struct stat {int dummy; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 scalar_t__ TRUE ; 
 int _S_IREAD ; 
 int _S_IWRITE ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

int
FUNC8(const char *oldname, const char *newname) {
	BOOL filestatus;
	char buf[512];
	struct stat sbuf;
	BOOL exists = FALSE;
	int tmpfd;

	/*
	 * Make sure we have something to do
	 */
	if (FUNC5(oldname, &sbuf) != 0) {
		errno = ENOENT;
		return (-1);
	}

	/*
	 * Rename to a backup the new file if it still exists
	 */
	if (FUNC5(newname, &sbuf) == 0) {
		exists = TRUE;
		FUNC7(buf, newname);
		FUNC6(buf, ".XXXXX");
		tmpfd = FUNC4(buf);
		if (tmpfd > 0)
			FUNC3(tmpfd);
		FUNC0(buf);
		FUNC2(newname, _S_IREAD | _S_IWRITE);

		filestatus = FUNC1(newname, buf);
	}
	/* Now rename the file to the new name
	 */
	FUNC2(oldname, _S_IREAD | _S_IWRITE);

	filestatus = FUNC1(oldname, newname);
	if (filestatus == 0) {
		/*
		 * Try to rename the backup back to the original name
		 * if the backup got created
		 */
		if (exists == TRUE) {
			filestatus = FUNC1(buf, newname);
			if (filestatus == 0)
				errno = EACCES;
		}
		return (-1);
	}

	/*
	 * Delete the backup file if it got created
	 */
	if (exists == TRUE)
		filestatus = FUNC0(buf);
	return (0);
}