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
typedef  size_t u_int ;
struct stat {int st_mode; } ;
struct ssh {int dummy; } ;
struct spwd {char* sp_pwdp; } ;
struct passwd {char* pw_passwd; char* pw_shell; int /*<<< orphan*/  pw_name; int /*<<< orphan*/  pw_gid; } ;
struct TYPE_2__ {scalar_t__ num_deny_users; size_t num_allow_users; scalar_t__ num_deny_groups; scalar_t__ num_allow_groups; int /*<<< orphan*/  allow_groups; int /*<<< orphan*/  deny_groups; int /*<<< orphan*/ * allow_users; int /*<<< orphan*/ * deny_users; int /*<<< orphan*/  use_dns; int /*<<< orphan*/ * chroot_directory; int /*<<< orphan*/  use_pam; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCKED_PASSWD_PREFIX ; 
 int /*<<< orphan*/  LOCKED_PASSWD_STRING ; 
 int /*<<< orphan*/  LOCKED_PASSWD_SUBSTR ; 
 scalar_t__ FUNC0 (int) ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 char* _PATH_BSHELL ; 
 struct ssh* active_state ; 
 char* FUNC1 (struct ssh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct spwd*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC8 (struct passwd*) ; 
 struct spwd* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loginmsg ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__ options ; 
 char* FUNC12 (struct ssh*) ; 
 scalar_t__ FUNC13 (char*,struct stat*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct passwd*,int /*<<< orphan*/ *) ; 
 char* FUNC20 (char*) ; 

int
FUNC21(struct passwd * pw)
{
	struct ssh *ssh = active_state; /* XXX */
	struct stat st;
	const char *hostname = NULL, *ipaddr = NULL, *passwd = NULL;
	u_int i;
	int r;
#ifdef USE_SHADOW
	struct spwd *spw = NULL;
#endif

	/* Shouldn't be called if pw is NULL, but better safe than sorry... */
	if (!pw || !pw->pw_name)
		return 0;

#ifdef USE_SHADOW
	if (!options.use_pam)
		spw = getspnam(pw->pw_name);
#ifdef HAS_SHADOW_EXPIRE
	if (!options.use_pam && spw != NULL && auth_shadow_acctexpired(spw))
		return 0;
#endif /* HAS_SHADOW_EXPIRE */
#endif /* USE_SHADOW */

	/* grab passwd field for locked account check */
	passwd = pw->pw_passwd;
#ifdef USE_SHADOW
	if (spw != NULL)
#ifdef USE_LIBIAF
		passwd = get_iaf_password(pw);
#else
		passwd = spw->sp_pwdp;
#endif /* USE_LIBIAF */
#endif

	/* check for locked account */
	if (!options.use_pam && passwd && *passwd) {
		int locked = 0;

#ifdef LOCKED_PASSWD_STRING
		if (strcmp(passwd, LOCKED_PASSWD_STRING) == 0)
			 locked = 1;
#endif
#ifdef LOCKED_PASSWD_PREFIX
		if (strncmp(passwd, LOCKED_PASSWD_PREFIX,
		    strlen(LOCKED_PASSWD_PREFIX)) == 0)
			 locked = 1;
#endif
#ifdef LOCKED_PASSWD_SUBSTR
		if (strstr(passwd, LOCKED_PASSWD_SUBSTR))
			locked = 1;
#endif
#ifdef USE_LIBIAF
		free((void *) passwd);
#endif /* USE_LIBIAF */
		if (locked) {
			FUNC10("User %.100s not allowed because account is locked",
			    pw->pw_name);
			return 0;
		}
	}

	/*
	 * Deny if shell does not exist or is not executable unless we
	 * are chrooting.
	 */
	if (options.chroot_directory == NULL ||
	    FUNC14(options.chroot_directory, "none") == 0) {
		char *shell = FUNC20((pw->pw_shell[0] == '\0') ?
		    _PATH_BSHELL : pw->pw_shell); /* empty = /bin/sh */

		if (FUNC13(shell, &st) != 0) {
			FUNC10("User %.100s not allowed because shell %.100s "
			    "does not exist", pw->pw_name, shell);
			FUNC4(shell);
			return 0;
		}
		if (FUNC0(st.st_mode) == 0 ||
		    (st.st_mode & (S_IXOTH|S_IXUSR|S_IXGRP)) == 0) {
			FUNC10("User %.100s not allowed because shell %.100s "
			    "is not executable", pw->pw_name, shell);
			FUNC4(shell);
			return 0;
		}
		FUNC4(shell);
	}

	if (options.num_deny_users > 0 || options.num_allow_users > 0 ||
	    options.num_deny_groups > 0 || options.num_allow_groups > 0) {
		hostname = FUNC1(ssh, options.use_dns);
		ipaddr = FUNC12(ssh);
	}

	/* Return false if user is listed in DenyUsers */
	if (options.num_deny_users > 0) {
		for (i = 0; i < options.num_deny_users; i++) {
			r = FUNC11(pw->pw_name, hostname, ipaddr,
			    options.deny_users[i]);
			if (r < 0) {
				FUNC3("Invalid DenyUsers pattern \"%.100s\"",
				    options.deny_users[i]);
			} else if (r != 0) {
				FUNC10("User %.100s from %.100s not allowed "
				    "because listed in DenyUsers",
				    pw->pw_name, hostname);
				return 0;
			}
		}
	}
	/* Return false if AllowUsers isn't empty and user isn't listed there */
	if (options.num_allow_users > 0) {
		for (i = 0; i < options.num_allow_users; i++) {
			r = FUNC11(pw->pw_name, hostname, ipaddr,
			    options.allow_users[i]);
			if (r < 0) {
				FUNC3("Invalid AllowUsers pattern \"%.100s\"",
				    options.allow_users[i]);
			} else if (r == 1)
				break;
		}
		/* i < options.num_allow_users iff we break for loop */
		if (i >= options.num_allow_users) {
			FUNC10("User %.100s from %.100s not allowed because "
			    "not listed in AllowUsers", pw->pw_name, hostname);
			return 0;
		}
	}
	if (options.num_deny_groups > 0 || options.num_allow_groups > 0) {
		/* Get the user's group access list (primary and supplementary) */
		if (FUNC6(pw->pw_name, pw->pw_gid) == 0) {
			FUNC10("User %.100s from %.100s not allowed because "
			    "not in any group", pw->pw_name, hostname);
			return 0;
		}

		/* Return false if one of user's groups is listed in DenyGroups */
		if (options.num_deny_groups > 0)
			if (FUNC7(options.deny_groups,
			    options.num_deny_groups)) {
				FUNC5();
				FUNC10("User %.100s from %.100s not allowed "
				    "because a group is listed in DenyGroups",
				    pw->pw_name, hostname);
				return 0;
			}
		/*
		 * Return false if AllowGroups isn't empty and one of user's groups
		 * isn't listed there
		 */
		if (options.num_allow_groups > 0)
			if (!FUNC7(options.allow_groups,
			    options.num_allow_groups)) {
				FUNC5();
				FUNC10("User %.100s from %.100s not allowed "
				    "because none of user's groups are listed "
				    "in AllowGroups", pw->pw_name, hostname);
				return 0;
			}
		FUNC5();
	}

#ifdef CUSTOM_SYS_AUTH_ALLOWED_USER
	if (!sys_auth_allowed_user(pw, &loginmsg))
		return 0;
#endif

	/* We found no reason not to let this user try to log on... */
	return 1;
}