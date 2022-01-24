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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ssh {int /*<<< orphan*/ * authctxt; } ;
typedef  int /*<<< orphan*/  Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_EXT_INFO ; 
 int /*<<< orphan*/  SSH2_MSG_USERAUTH_BANNER ; 
 int /*<<< orphan*/  SSH2_MSG_USERAUTH_FAILURE ; 
 int /*<<< orphan*/  SSH2_MSG_USERAUTH_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  input_userauth_banner ; 
 int /*<<< orphan*/  input_userauth_error ; 
 int /*<<< orphan*/  input_userauth_failure ; 
 int /*<<< orphan*/  input_userauth_success ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ssh*) ; 
 int FUNC5 (struct ssh*,char**,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(int type, u_int32_t seq, struct ssh *ssh)
{
	Authctxt *authctxt = ssh->authctxt;
	int r;

	if (FUNC4(ssh) > 0) {
		char *reply;

		if ((r = FUNC5(ssh, &reply, NULL)) != 0)
			goto out;
		FUNC1("service_accept: %s", reply);
		FUNC2(reply);
	} else {
		FUNC1("buggy server: service_accept w/o service");
	}
	if ((r = FUNC6(ssh)) != 0)
		goto out;
	FUNC0("SSH2_MSG_SERVICE_ACCEPT received");

	/* initial userauth request */
	FUNC7(authctxt);

	FUNC3(ssh, SSH2_MSG_EXT_INFO, &input_userauth_error);
	FUNC3(ssh, SSH2_MSG_USERAUTH_SUCCESS, &input_userauth_success);
	FUNC3(ssh, SSH2_MSG_USERAUTH_FAILURE, &input_userauth_failure);
	FUNC3(ssh, SSH2_MSG_USERAUTH_BANNER, &input_userauth_banner);
	r = 0;
 out:
	return r;
}