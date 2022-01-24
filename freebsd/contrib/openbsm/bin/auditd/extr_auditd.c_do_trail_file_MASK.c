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
 int ADE_HARDLIM ; 
 int ADE_SOFTLIM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  audit_warn_expired ; 
 int /*<<< orphan*/  audit_warn_hard ; 
 int /*<<< orphan*/  audit_warn_soft ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 

__attribute__((used)) static int
FUNC7(void)
{
	int err;

	/*
	 * First, refresh the list of audit log directories.
	 */
	err = FUNC4(audit_warn_soft, audit_warn_hard);
	if (err) {
		FUNC3("auditd_read_dirs(): %s",
		    FUNC5(err));
		if (err == ADE_HARDLIM)
			FUNC0();
		if (err != ADE_SOFTLIM)
			return (-1);
		else
			FUNC1();
			/* continue on with soft limit error */
	}

	/*
	 * Create a new file and swap with the one being used in kernel.
	 */
	if (FUNC6() == -1) {
		/*
		 * XXX Faulty directory listing? - user should be given
		 * XXX an opportunity to change the audit_control file
		 * XXX switch to a reduced mode of auditing?
		 */
		return (-1);
	}

	/*
	 * Finally, see if there are any trail files to expire.
	 */
	err = FUNC2(audit_warn_expired);
	if (err)
		FUNC3("auditd_expire_trails(): %s",
		    FUNC5(err));

	return (0);
}