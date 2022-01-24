#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_6__ {int max_authtries; int /*<<< orphan*/  use_dns; } ;
struct TYPE_5__ {int failures; scalar_t__ postponed; int /*<<< orphan*/  user; scalar_t__ valid; int /*<<< orphan*/ * auth_method_info; } ;
typedef  TYPE_1__ Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  BLACKLIST_AUTH_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct ssh* active_state ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  loginmsg ; 
 void FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__ options ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC10 (struct ssh*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ use_privsep ; 
 void FUNC14 (char const*) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 

void
FUNC16(Authctxt *authctxt, int authenticated, int partial,
    const char *method, const char *submethod)
{
	struct ssh *ssh = active_state; /* XXX */
	void (*authlog) (const char *fmt,...) = verbose;
	const char *authmsg;
	char *extra = NULL;

	if (use_privsep && !FUNC7() && !authctxt->postponed)
		return;

	/* Raise logging level */
	if (authenticated == 1 ||
	    !authctxt->valid ||
	    authctxt->failures >= options.max_authtries / 2 ||
	    FUNC11(method, "password") == 0)
		authlog = logit;

	if (authctxt->postponed)
		authmsg = "Postponed";
	else if (partial)
		authmsg = "Partial";
	else {
		authmsg = authenticated ? "Accepted" : "Failed";
		if (authenticated)
			FUNC0(BLACKLIST_AUTH_OK, "ssh");
	}

	if ((extra = FUNC4(authctxt)) == NULL) {
		if (authctxt->auth_method_info != NULL)
			extra = FUNC15(authctxt->auth_method_info);
	}

	authlog("%s %s%s%s for %s%.100s from %.200s port %d ssh2%s%s",
	    authmsg,
	    method,
	    submethod != NULL ? "/" : "", submethod == NULL ? "" : submethod,
	    authctxt->valid ? "" : "invalid user ",
	    authctxt->user,
	    FUNC9(ssh),
	    FUNC10(ssh),
	    extra != NULL ? ": " : "",
	    extra != NULL ? extra : "");

	FUNC5(extra);

#ifdef CUSTOM_FAILED_LOGIN
	if (authenticated == 0 && !authctxt->postponed &&
	    (strcmp(method, "password") == 0 ||
	    strncmp(method, "keyboard-interactive", 20) == 0 ||
	    strcmp(method, "challenge-response") == 0))
		record_failed_login(authctxt->user,
		    auth_get_canonical_hostname(ssh, options.use_dns), "ssh");
# ifdef WITH_AIXAUTHENTICATE
	if (authenticated)
		sys_auth_record_login(authctxt->user,
		    auth_get_canonical_hostname(ssh, options.use_dns), "ssh",
		    &loginmsg);
# endif
#endif
#ifdef SSH_AUDIT_EVENTS
	if (authenticated == 0 && !authctxt->postponed)
		audit_event(audit_classify_auth(method));
#endif
}