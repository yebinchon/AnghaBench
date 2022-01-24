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
typedef  int /*<<< orphan*/  data_addr ;
struct TYPE_6__ {int /*<<< orphan*/  pw_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int AUTH_OTP ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 scalar_t__ askpasswd ; 
 int auth_level ; 
 int /*<<< orphan*/  curname ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  guest ; 
 TYPE_1__* his_addr ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (TYPE_2__*,char*) ; 
 scalar_t__ logged_in ; 
 scalar_t__ logging ; 
 int /*<<< orphan*/  login_attempts ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  otp_ctx ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* pw ; 
 int /*<<< orphan*/  remotehost ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*) ; 

void
FUNC15(char *passwd)
{
	int rval;

	/* some clients insists on sending a password */
	if (logged_in && askpasswd == 0){
	    FUNC9(230, "Password not necessary");
	    return;
	}

	if (logged_in || askpasswd == 0) {
		FUNC9(503, "Login with USER first.");
		return;
	}
	askpasswd = 0;
	rval = 1;
	if (!guest) {		/* "ftp" is only account allowed no password */
		if (pw == NULL)
			rval = 1;	/* failure below */
#ifdef OTP
		else if (otp_verify_user (&otp_ctx, passwd) == 0) {
		    rval = 0;
		}
#endif
		else if((auth_level & AUTH_OTP) == 0) {
#ifdef KRB5
		    rval = krb5_verify(pw, passwd);
#endif
		    if (rval)
			rval = FUNC14(pw->pw_name, passwd);
		} else {
#ifdef OTP
		    char *s;
		    if ((s = otp_error(&otp_ctx)) != NULL)
			lreply(530, "OTP: %s", s);
#endif
		}
		FUNC6 (passwd, 0, FUNC12(passwd));

		/*
		 * If rval == 1, the user failed the authentication
		 * check above.  If rval == 0, either Kerberos or
		 * local authentication succeeded.
		 */
		if (rval) {
			char data_addr[256];

			if (FUNC3 (his_addr->sa_family,
				       FUNC10(his_addr),
				       data_addr, sizeof(data_addr)) == NULL)
				FUNC11 (data_addr, "unknown address",
						 sizeof(data_addr));

			FUNC9(530, "Login incorrect.");
			if (logging)
				FUNC13(LOG_NOTICE,
				    "FTP LOGIN FAILED FROM %s(%s), %s",
				       remotehost,
				       data_addr,
				       curname);
			pw = NULL;
			if (login_attempts++ >= 5) {
				FUNC13(LOG_NOTICE,
				       "repeated login failures from %s(%s)",
				       remotehost,
				       data_addr);
				FUNC2(0);
			}
			return;
		}
	}
	if(!FUNC0(230, passwd))
	  return;

	/* Forget all about it... */
	FUNC1();
}