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
typedef  int /*<<< orphan*/  TS ;

/* Variables and functions */
 int ADE_ACTL ; 
 int ADE_NOERR ; 
 scalar_t__ AUD_STATE_ENABLED ; 
 int /*<<< orphan*/  TIMESTAMP_LEN ; 
 int /*<<< orphan*/  audit_review_gid ; 
 int /*<<< orphan*/  audit_warn_getacdir ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 char* lastfile ; 
 scalar_t__ FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char*,char) ; 

__attribute__((used)) static int
FUNC12(void)
{
	int err;
	char *newfile, *name;
	char TS[TIMESTAMP_LEN + 1];
	time_t tt;

	if (FUNC9(tt, TS, sizeof(TS)) != 0)
		return (-1);
	/*
	 * If prefix and suffix are the same, it means that records are
	 * being produced too fast. We don't want to rename now, because
	 * next trail file can get the same name and once that one is
	 * terminated also within one second it will overwrite the current
	 * one. Just keep writing to the same trail and wait for the next
	 * trigger from the kernel.
	 * FREEBSD KERNEL WAS UPDATED TO KEEP SENDING TRIGGERS, WHICH MIGHT
	 * NOT BE THE CASE FOR OTHER OSES.
	 * If the kernel will not keep sending triggers, trail file will not
	 * be terminated.
	 */
	if (lastfile == NULL) {
		name = NULL;
	} else {
		name = FUNC11(lastfile, '/');
		if (name != NULL)
			name++;
	}
	if (name != NULL && FUNC10(name, TS, TIMESTAMP_LEN) == 0) {
		FUNC1("Not ready to terminate trail file yet.");
		return (0);
	}
	err = FUNC7(TS, &newfile, audit_review_gid,
	    audit_warn_getacdir);
	if (err != ADE_NOERR) {
		FUNC2("%s: %m", FUNC6(err));
		if (err != ADE_ACTL)
			return (-1);
	}

	/*
	 * Only close the last file if were in an auditing state before
	 * calling swap_audit_file().  We may need to recover from a crash.
	 */
	if (FUNC0() == AUD_STATE_ENABLED)
		FUNC8(TS);


	/*
	 * auditd_swap_trail() potentially enables auditing (if not already
	 * enabled) so updated the cached state as well.
	 */
	FUNC5(AUD_STATE_ENABLED);

	/*
	 *  Create 'current' symlink.  Recover from crash, if needed.
	 */
	if (FUNC4(newfile) != 0)
		FUNC2("auditd_new_curlink(\"%s\") failed: %s: %m",
		    newfile, FUNC6(err));

	lastfile = newfile;
	FUNC3("New audit file is %s", newfile);

	return (0);
}