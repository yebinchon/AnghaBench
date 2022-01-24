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
struct passwd {scalar_t__ pw_gid; scalar_t__ pw_uid; int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPNG_DROP ; 
 int CAPNG_EFFECTIVE ; 
 int /*<<< orphan*/  CAPNG_NO_FLAG ; 
 int CAPNG_PERMITTED ; 
 int /*<<< orphan*/  CAPNG_SELECT_BOTH ; 
 int /*<<< orphan*/  CAP_SETGID ; 
 int /*<<< orphan*/  CAP_SETUID ; 
 int /*<<< orphan*/  CAP_SYS_CHROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 struct passwd* FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 char* program_name ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC12(const char *username, const char *chroot_dir)
{
	struct passwd *pw = NULL;

	if (chroot_dir && !username) {
		FUNC6(stderr, "%s: Chroot without dropping root is insecure\n",
			program_name);
		FUNC5(1);
	}

	pw = FUNC7(username);
	if (pw) {
		if (chroot_dir) {
			if (FUNC4(chroot_dir) != 0 || FUNC3 ("/") != 0) {
				FUNC6(stderr, "%s: Couldn't chroot/chdir to '%.64s': %s\n",
					program_name, chroot_dir, FUNC9(errno));
				FUNC5(1);
			}
		}
#ifdef HAVE_LIBCAP_NG
		{
			int ret = capng_change_id(pw->pw_uid, pw->pw_gid, CAPNG_NO_FLAG);
			if (ret < 0) {
				fprintf(stderr, "error : ret %d\n", ret);
			} else {
				fprintf(stderr, "dropped privs to %s\n", username);
			}
		}
#else
		if (FUNC8(pw->pw_name, pw->pw_gid) != 0 ||
		    FUNC10(pw->pw_gid) != 0 || FUNC11(pw->pw_uid) != 0) {
			FUNC6(stderr, "%s: Couldn't change to '%.32s' uid=%lu gid=%lu: %s\n",
				program_name, username,
				(unsigned long)pw->pw_uid,
				(unsigned long)pw->pw_gid,
				FUNC9(errno));
			FUNC5(1);
		}
		else {
			FUNC6(stderr, "dropped privs to %s\n", username);
		}
#endif /* HAVE_LIBCAP_NG */
	}
	else {
		FUNC6(stderr, "%s: Couldn't find user '%.32s'\n",
			program_name, username);
		FUNC5(1);
	}
#ifdef HAVE_LIBCAP_NG
	/* We don't need CAP_SETUID, CAP_SETGID and CAP_SYS_CHROOT any more. */
	capng_updatev(
		CAPNG_DROP,
		CAPNG_EFFECTIVE | CAPNG_PERMITTED,
		CAP_SETUID,
		CAP_SETGID,
		CAP_SYS_CHROOT,
		-1);
	capng_apply(CAPNG_SELECT_BOTH);
#endif /* HAVE_LIBCAP_NG */

}