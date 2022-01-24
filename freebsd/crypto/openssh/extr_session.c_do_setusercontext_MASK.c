#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uidstr ;
typedef  int /*<<< orphan*/  u_int ;
struct passwd {scalar_t__ pw_uid; int /*<<< orphan*/  pw_name; int /*<<< orphan*/  pw_dir; int /*<<< orphan*/  pw_gid; } ;
struct TYPE_2__ {char* chroot_directory; } ;

/* Variables and functions */
 int LOGIN_SETALL ; 
 int LOGIN_SETENV ; 
 int LOGIN_SETPATH ; 
 int LOGIN_SETUMASK ; 
 int LOGIN_SETUSER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int in_chroot ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lc ; 
 TYPE_1__ options ; 
 char* FUNC8 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC13 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,struct passwd*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,unsigned long long) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 char* FUNC22 (char*,scalar_t__) ; 

void
FUNC23(struct passwd *pw)
{
	char uidstr[32], *chroot_path, *tmp;

	FUNC12(pw);

	if (FUNC11()) {
#ifdef HAVE_LOGIN_CAP
		if (setusercontext(lc, pw, pw->pw_uid,
		    (LOGIN_SETALL & ~(LOGIN_SETENV|LOGIN_SETPATH|LOGIN_SETUSER))) < 0) {
			perror("unable to set user context");
			exit(1);
		}
#else
		if (FUNC17(pw->pw_name) < 0)
			FUNC1("setlogin failed: %s", FUNC21(errno));
		if (FUNC16(pw->pw_gid) < 0) {
			FUNC10("setgid");
			FUNC2(1);
		}
		/* Initialize the group list. */
		if (FUNC7(pw->pw_name, pw->pw_gid) < 0) {
			FUNC10("initgroups");
			FUNC2(1);
		}
		FUNC0();
#endif

		FUNC13(pw);

		if (!in_chroot && options.chroot_directory != NULL &&
		    FUNC20(options.chroot_directory, "none") != 0) {
                        tmp = FUNC22(options.chroot_directory,
			    pw->pw_uid);
			FUNC19(uidstr, sizeof(uidstr), "%llu",
			    (unsigned long long)pw->pw_uid);
			chroot_path = FUNC8(tmp, "h", pw->pw_dir,
			    "u", pw->pw_name, "U", uidstr, (char *)NULL);
			FUNC14(chroot_path, pw->pw_uid);
			FUNC4(tmp);
			FUNC4(chroot_path);
			/* Make sure we don't attempt to chroot again */
			FUNC4(options.chroot_directory);
			options.chroot_directory = NULL;
			in_chroot = 1;
		}

#ifdef HAVE_LOGIN_CAP
		if (setusercontext(lc, pw, pw->pw_uid, LOGIN_SETUSER) < 0) {
			perror("unable to set user context (setuser)");
			exit(1);
		}
		/* 
		 * FreeBSD's setusercontext() will not apply the user's
		 * own umask setting unless running with the user's UID.
		 */
		(void) setusercontext(lc, pw, pw->pw_uid, LOGIN_SETUMASK);
#else
# ifdef USE_LIBIAF
		/*
		 * In a chroot environment, the set_id() will always fail;
		 * typically because of the lack of necessary authentication
		 * services and runtime such as ./usr/lib/libiaf.so,
		 * ./usr/lib/libpam.so.1, and ./etc/passwd We skip it in the
		 * internal sftp chroot case.  We'll lose auditing and ACLs but
		 * permanently_set_uid will take care of the rest.
		 */
		if (!in_chroot && set_id(pw->pw_name) != 0)
			fatal("set_id(%s) Failed", pw->pw_name);
# endif /* USE_LIBIAF */
		/* Permanently switch to the desired uid. */
		FUNC9(pw);
#endif
	} else if (options.chroot_directory != NULL &&
	    FUNC20(options.chroot_directory, "none") != 0) {
		FUNC3("server lacks privileges to chroot to ChrootDirectory");
	}

	if (FUNC6() != pw->pw_uid || FUNC5() != pw->pw_uid)
		FUNC3("Failed to set uids to %u.", (u_int) pw->pw_uid);
}