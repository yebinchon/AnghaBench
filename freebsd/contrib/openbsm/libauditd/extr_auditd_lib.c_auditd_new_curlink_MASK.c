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
typedef  int /*<<< orphan*/  recoveredname ;
typedef  int /*<<< orphan*/  newname ;

/* Variables and functions */
 int ADE_READLINK ; 
 int ADE_RENAME ; 
 int ADE_STRERR ; 
 int ADE_SYMLINK ; 
 int /*<<< orphan*/  AUDIT_CURRENT_LINK ; 
 int /*<<< orphan*/  AUE_audit_recovery ; 
 int /*<<< orphan*/  CRASH_RECOVERY ; 
 scalar_t__ ENOENT ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  NOT_TERMINATED ; 
 int /*<<< orphan*/  POSTFIX_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(char *curfile)
{
	int len, err;
	char *ptr;
	char *path = NULL;
	struct stat sb;
	char recoveredname[MAXPATHLEN];
	char newname[MAXPATHLEN];

	/*
	 * Check to see if audit was shutdown properly.  If not, clean up,
	 * recover previous audit trail file, and generate audit record.
	 */
	len = FUNC3(AUDIT_CURRENT_LINK, recoveredname,
	    sizeof(recoveredname) - 1);
	if (len > 0) {
		/* 'current' exist but is it pointing at a valid file?  */
		recoveredname[len++] = '\0';
		if (FUNC4(recoveredname, &sb) == 0) {
			/* Yes, rename it to a crash recovery file. */
			FUNC5(newname, recoveredname, sizeof(newname));

			if ((ptr = FUNC6(newname, NOT_TERMINATED)) != NULL) {
				FUNC2(ptr, CRASH_RECOVERY, POSTFIX_LEN);
				if (FUNC1(recoveredname, newname) != 0)
					return (ADE_RENAME);
			} else
				return (ADE_STRERR);

			path = newname;
		}

		/* 'current' symlink is (now) invalid so remove it. */
		(void) FUNC8(AUDIT_CURRENT_LINK);

		/* Note the crash recovery in current audit trail */
		err = FUNC0(AUE_audit_recovery, path);
		if (err)
			return (err);
	}

	if (len < 0 && errno != ENOENT)
		return (ADE_READLINK);

	if (FUNC7(curfile, AUDIT_CURRENT_LINK) != 0)
		return (ADE_SYMLINK);

	return (0);
}