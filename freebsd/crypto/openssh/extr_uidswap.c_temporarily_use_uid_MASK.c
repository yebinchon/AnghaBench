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
typedef  int /*<<< orphan*/  u_int ;
struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; int /*<<< orphan*/  pw_name; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 void* FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int privileged ; 
 scalar_t__ saved_egid ; 
 int /*<<< orphan*/ * saved_egroups ; 
 scalar_t__ saved_egroupslen ; 
 scalar_t__ saved_euid ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int temporarily_use_uid_effective ; 
 int /*<<< orphan*/ * user_groups ; 
 scalar_t__ user_groups_uid ; 
 int user_groupslen ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC14(struct passwd *pw)
{
	/* Save the current euid, and egroups. */
#ifdef SAVED_IDS_WORK_WITH_SETEUID
	saved_euid = geteuid();
	saved_egid = getegid();
	debug("temporarily_use_uid: %u/%u (e=%u/%u)",
	    (u_int)pw->pw_uid, (u_int)pw->pw_gid,
	    (u_int)saved_euid, (u_int)saved_egid);
#ifndef HAVE_CYGWIN
	if (saved_euid != 0) {
		privileged = 0;
		return;
	}
#endif
#else
	if (FUNC4() != 0) {
		privileged = 0;
		return;
	}
#endif /* SAVED_IDS_WORK_WITH_SETEUID */

	privileged = 1;
	temporarily_use_uid_effective = 1;

	saved_egroupslen = FUNC5(0, NULL);
	if (saved_egroupslen < 0)
		FUNC1("getgroups: %.100s", FUNC12(errno));
	if (saved_egroupslen > 0) {
		saved_egroups = FUNC13(saved_egroups,
		    saved_egroupslen, sizeof(gid_t));
		if (FUNC5(saved_egroupslen, saved_egroups) < 0)
			FUNC1("getgroups: %.100s", FUNC12(errno));
	} else { /* saved_egroupslen == 0 */
		FUNC2(saved_egroups);
		saved_egroups = NULL;
	}

	/* set and save the user's groups */
	if (user_groupslen == -1 || user_groups_uid != pw->pw_uid) {
		if (FUNC6(pw->pw_name, pw->pw_gid) < 0)
			FUNC1("initgroups: %s: %.100s", pw->pw_name,
			    FUNC12(errno));

		user_groupslen = FUNC5(0, NULL);
		if (user_groupslen < 0)
			FUNC1("getgroups: %.100s", FUNC12(errno));
		if (user_groupslen > 0) {
			user_groups = FUNC13(user_groups,
			    user_groupslen, sizeof(gid_t));
			if (FUNC5(user_groupslen, user_groups) < 0)
				FUNC1("getgroups: %.100s", FUNC12(errno));
		} else { /* user_groupslen == 0 */
			FUNC2(user_groups);
			user_groups = NULL;
		}
		user_groups_uid = pw->pw_uid;
	}
	/* Set the effective uid to the given (unprivileged) uid. */
	if (FUNC10(user_groupslen, user_groups) < 0)
		FUNC1("setgroups: %.100s", FUNC12(errno));
#ifndef SAVED_IDS_WORK_WITH_SETEUID
	/* Propagate the privileged gid to all of our gids. */
	if (FUNC9(FUNC3()) < 0)
		FUNC0("setgid %u: %.100s", (u_int) FUNC3(), FUNC12(errno));
	/* Propagate the privileged uid to all of our uids. */
	if (FUNC11(FUNC4()) < 0)
		FUNC0("setuid %u: %.100s", (u_int) FUNC4(), FUNC12(errno));
#endif /* SAVED_IDS_WORK_WITH_SETEUID */
	if (FUNC7(pw->pw_gid) < 0)
		FUNC1("setegid %u: %.100s", (u_int)pw->pw_gid,
		    FUNC12(errno));
	if (FUNC8(pw->pw_uid) == -1)
		FUNC1("seteuid %u: %.100s", (u_int)pw->pw_uid,
		    FUNC12(errno));
}