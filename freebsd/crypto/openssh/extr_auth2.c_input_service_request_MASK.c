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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct ssh {TYPE_1__* authctxt; } ;
struct TYPE_2__ {int /*<<< orphan*/  success; } ;
typedef  TYPE_1__ Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_SERVICE_ACCEPT ; 
 int /*<<< orphan*/  SSH2_MSG_USERAUTH_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  input_userauth_request ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

__attribute__((used)) static int
FUNC12(int type, u_int32_t seq, struct ssh *ssh)
{
	Authctxt *authctxt = ssh->authctxt;
	u_int len;
	int acceptit = 0;
	char *service = FUNC5(&len);
	FUNC3();

	if (authctxt == NULL)
		FUNC1("input_service_request: no authctxt");

	if (FUNC11(service, "ssh-userauth") == 0) {
		if (!authctxt->success) {
			acceptit = 1;
			/* now we can handle user-auth requests */
			FUNC10(ssh, SSH2_MSG_USERAUTH_REQUEST, &input_userauth_request);
		}
	}
	/* XXX all other service requests are denied */

	if (acceptit) {
		FUNC8(SSH2_MSG_SERVICE_ACCEPT);
		FUNC6(service);
		FUNC7();
		FUNC9();
	} else {
		FUNC0("bad service request %s", service);
		FUNC4("bad service request %s", service);
	}
	FUNC2(service);
	return 0;
}