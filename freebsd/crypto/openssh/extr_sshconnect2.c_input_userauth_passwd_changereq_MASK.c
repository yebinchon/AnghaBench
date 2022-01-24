#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct ssh {TYPE_2__* authctxt; } ;
typedef  int /*<<< orphan*/  prompt ;
struct TYPE_6__ {char* host_key_alias; } ;
struct TYPE_5__ {char* host; char* server_user; char* service; TYPE_1__* method; } ;
struct TYPE_4__ {char* name; } ;
typedef  TYPE_2__ Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  RP_ALLOW_EOF ; 
 int /*<<< orphan*/  SSH2_MSG_USERAUTH_PASSWD_CHANGEREQ ; 
 int /*<<< orphan*/  SSH2_MSG_USERAUTH_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_3__ options ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ssh*,int /*<<< orphan*/ ,int (*) (int,int /*<<< orphan*/ ,struct ssh*)) ; 
 int FUNC8 (struct ssh*,int) ; 
 int FUNC9 (struct ssh*,char**,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ssh*,char*) ; 
 int FUNC11 (struct ssh*,int) ; 
 int FUNC12 (struct ssh*) ; 
 int FUNC13 (struct ssh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*) ; 

int
FUNC16(int type, u_int32_t seqnr, struct ssh *ssh)
{
	Authctxt *authctxt = ssh->authctxt;
	char *info = NULL, *lang = NULL, *password = NULL, *retype = NULL;
	char prompt[256];
	const char *host;
	int r;

	FUNC0("input_userauth_passwd_changereq");

	if (authctxt == NULL)
		FUNC1("input_userauth_passwd_changereq: "
		    "no authentication context");
	host = options.host_key_alias ? options.host_key_alias : authctxt->host;

	if ((r = FUNC9(ssh, &info, NULL)) != 0 ||
	    (r = FUNC9(ssh, &lang, NULL)) != 0)
		goto out;
	if (FUNC15(info) > 0)
		FUNC4("%s", info);
	if ((r = FUNC13(ssh, SSH2_MSG_USERAUTH_REQUEST)) != 0 ||
	    (r = FUNC10(ssh, authctxt->server_user)) != 0 ||
	    (r = FUNC10(ssh, authctxt->service)) != 0 ||
	    (r = FUNC10(ssh, authctxt->method->name)) != 0 ||
	    (r = FUNC11(ssh, 1)) != 0)	/* additional info */
		goto out;

	FUNC6(prompt, sizeof(prompt),
	    "Enter %.30s@%.128s's old password: ",
	    authctxt->server_user, host);
	password = FUNC5(prompt, 0);
	if ((r = FUNC10(ssh, password)) != 0)
		goto out;

	FUNC3(password, FUNC15(password));
	password = NULL;
	while (password == NULL) {
		FUNC6(prompt, sizeof(prompt),
		    "Enter %.30s@%.128s's new password: ",
		    authctxt->server_user, host);
		password = FUNC5(prompt, RP_ALLOW_EOF);
		if (password == NULL) {
			/* bail out */
			r = 0;
			goto out;
		}
		FUNC6(prompt, sizeof(prompt),
		    "Retype %.30s@%.128s's new password: ",
		    authctxt->server_user, host);
		retype = FUNC5(prompt, 0);
		if (FUNC14(password, retype) != 0) {
			FUNC3(password, FUNC15(password));
			FUNC4("Mismatch; try again, EOF to quit.");
			password = NULL;
		}
		FUNC3(retype, FUNC15(retype));
	}
	if ((r = FUNC10(ssh, password)) != 0 ||
	    (r = FUNC8(ssh, 64)) != 0 ||
	    (r = FUNC12(ssh)) != 0)
		goto out;

	FUNC7(ssh, SSH2_MSG_USERAUTH_PASSWD_CHANGEREQ,
	    &input_userauth_passwd_changereq);
	r = 0;
 out:
	if (password)
		FUNC3(password, FUNC15(password));
	FUNC2(info);
	FUNC2(lang);
	return r;
}