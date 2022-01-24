#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ssh {TYPE_1__* authctxt; } ;
struct passwd {scalar_t__ pw_uid; } ;
struct TYPE_7__ {scalar_t__ permit_root_login; scalar_t__ permit_empty_passwd; int kerberos_authentication; scalar_t__ use_pam; } ;
struct TYPE_6__ {int valid; int force_pwchange; struct passwd* pw; } ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ Authctxt ;

/* Variables and functions */
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ MAX_PASSWORD_LEN ; 
 scalar_t__ PERMIT_YES ; 
 int FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct passwd*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_3__ options ; 
 scalar_t__ FUNC5 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int FUNC7 (struct ssh*,char const*) ; 

int
FUNC8(struct ssh *ssh, const char *password)
{
	Authctxt *authctxt = ssh->authctxt;
	struct passwd *pw = authctxt->pw;
	int result, ok = authctxt->valid;
#if defined(USE_SHADOW) && defined(HAS_SHADOW_EXPIRE)
	static int expire_checked = 0;
#endif

	if (FUNC6(password) > MAX_PASSWORD_LEN)
		return 0;

#ifndef HAVE_CYGWIN
	if (pw->pw_uid == 0 && options.permit_root_login != PERMIT_YES)
		ok = 0;
#endif
	if (*password == '\0' && options.permit_empty_passwd == 0)
		return 0;

#ifdef KRB5
	if (options.kerberos_authentication == 1) {
		int ret = auth_krb5_password(authctxt, password);
		if (ret == 1 || ret == 0)
			return ret && ok;
		/* Fall back to ordinary passwd authentication. */
	}
#endif
#ifdef HAVE_CYGWIN
	{
		HANDLE hToken = cygwin_logon_user(pw, password);

		if (hToken == INVALID_HANDLE_VALUE)
			return 0;
		cygwin_set_impersonation_token(hToken);
		return ok;
	}
#endif
#ifdef USE_PAM
	if (options.use_pam)
		return (sshpam_auth_passwd(authctxt, password) && ok);
#endif
#if defined(USE_SHADOW) && defined(HAS_SHADOW_EXPIRE)
	if (!expire_checked) {
		expire_checked = 1;
		if (auth_shadow_pwexpired(authctxt))
			authctxt->force_pwchange = 1;
	}
#endif
	result = FUNC7(ssh, password);
	if (authctxt->force_pwchange)
		FUNC1(ssh);
	return (result && ok);
}