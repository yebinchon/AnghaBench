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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  oldname ;
typedef  int /*<<< orphan*/  newname ;
typedef  int /*<<< orphan*/  TS ;

/* Variables and functions */
 int AUC_DISABLED ; 
 int AUC_NOAUDIT ; 
 int /*<<< orphan*/  AUDIT_CURRENT_LINK ; 
 int /*<<< orphan*/  AUE_audit_shutdown ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  NOT_TERMINATED ; 
 int /*<<< orphan*/  POSTFIX_LEN ; 
 int /*<<< orphan*/  TIMESTAMP_LEN ; 
 int /*<<< orphan*/  __BSM_INTERNAL_NOTIFY_KEY ; 
 scalar_t__ FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(void)
{
	int len;
	int cond;
	char *ptr;
	time_t tt;
	char oldname[MAXPATHLEN];
	char newname[MAXPATHLEN];
	char TS[TIMESTAMP_LEN + 1];

	/*
	 * Auditing already disabled?
	 */
	if (FUNC0(&cond) != 0)
		return (-1);
	if (cond == AUC_NOAUDIT)
		return (0);

	/*
	 *  Generate audit shutdown record.
	 */
	(void) FUNC2(AUE_audit_shutdown, NULL);

	/*
	 * Shutdown auditing in the kernel.
	 */
	cond = AUC_DISABLED;
	if (FUNC1(&cond) != 0)
		return (-1);
#ifdef	__BSM_INTERNAL_NOTIFY_KEY
	notify_post(__BSM_INTERNAL_NOTIFY_KEY);
#endif

	/*
	 * Rename last audit trail and remove 'current' link.
	 */
	len = FUNC7(AUDIT_CURRENT_LINK, oldname, sizeof(oldname) - 1);
	if (len < 0)
		return (-1);
	oldname[len++] = '\0';

	if (FUNC4(tt, TS, sizeof(TS)) != 0)
		return (-1);

	FUNC8(newname, oldname, sizeof(newname));

	if ((ptr = FUNC9(newname, NOT_TERMINATED)) != NULL) {
		FUNC5(ptr, TS, POSTFIX_LEN);
		if (FUNC3(oldname, newname) != 0)
			return (-1);
	} else
		return (-1);

	(void) FUNC10(AUDIT_CURRENT_LINK);

	return (0);
}