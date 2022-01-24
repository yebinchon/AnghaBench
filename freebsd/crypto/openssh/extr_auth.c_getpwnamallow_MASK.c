#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_name; } ;
struct connection_info {char const* user; } ;
typedef  int /*<<< orphan*/  login_cap_t ;
typedef  int /*<<< orphan*/  auth_session_t ;
struct TYPE_4__ {int /*<<< orphan*/  use_dns; int /*<<< orphan*/  log_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLACKLIST_BAD_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  SSH_INVALID_USER ; 
 struct ssh* active_state ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct passwd*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 struct connection_info* FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct passwd* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,struct connection_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct ssh*,TYPE_1__*) ; 
 struct passwd* FUNC18 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC19 (char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC21 (struct ssh*) ; 
 scalar_t__ FUNC22 (char const*,int /*<<< orphan*/ ) ; 

struct passwd *
FUNC23(const char *user)
{
	struct ssh *ssh = active_state; /* XXX */
#ifdef HAVE_LOGIN_CAP
	extern login_cap_t *lc;
#ifdef BSD_AUTH
	auth_session_t *as;
#endif
#endif
	struct passwd *pw;
	struct connection_info *ci = FUNC11(1, options.use_dns);

	ci->user = user;
	FUNC16(&options, ci);
	FUNC13(options.log_level);
	FUNC17(ssh, &options);

#if defined(_AIX) && defined(HAVE_SETAUTHDB)
	aix_setauthdb(user);
#endif

	pw = FUNC12(user);

#if defined(_AIX) && defined(HAVE_SETAUTHDB)
	aix_restoreauthdb();
#endif
#ifdef HAVE_CYGWIN
	/*
	 * Windows usernames are case-insensitive.  To avoid later problems
	 * when trying to match the username, the user is only allowed to
	 * login if the username is given in the same case as stored in the
	 * user database.
	 */
	if (pw != NULL && strcmp(user, pw->pw_name) != 0) {
		logit("Login name %.100s does not match stored username %.100s",
		    user, pw->pw_name);
		pw = NULL;
	}
#endif
	if (pw == NULL) {
		FUNC0(BLACKLIST_BAD_USER, user);
		FUNC15("Invalid user %.100s from %.100s port %d",
		    user, FUNC20(ssh), FUNC21(ssh));
#ifdef CUSTOM_FAILED_LOGIN
		record_failed_login(user,
		    auth_get_canonical_hostname(ssh, options.use_dns), "ssh");
#endif
#ifdef SSH_AUDIT_EVENTS
		audit_event(SSH_INVALID_USER);
#endif /* SSH_AUDIT_EVENTS */
		return (NULL);
	}
	if (!FUNC3(pw))
		return (NULL);
#ifdef HAVE_LOGIN_CAP
	if ((lc = login_getpwclass(pw)) == NULL) {
		debug("unable to get login class: %s", user);
		return (NULL);
	}
#ifdef BSD_AUTH
	if ((as = auth_open()) == NULL || auth_setpwd(as, pw) != 0 ||
	    auth_approval(as, lc, pw->pw_name, "ssh") <= 0) {
		debug("Approval failure for %s", user);
		pw = NULL;
	}
	if (as != NULL)
		auth_close(as);
#endif
#endif
	if (pw != NULL)
		return (FUNC18(pw));
	return (NULL);
}