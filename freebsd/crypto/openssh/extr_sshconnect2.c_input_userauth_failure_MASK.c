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
typedef  scalar_t__ u_char ;
struct ssh {int /*<<< orphan*/ * authctxt; } ;
typedef  int /*<<< orphan*/  Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ssh*,char**,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ssh*) ; 
 int FUNC6 (struct ssh*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(int type, u_int32_t seq, struct ssh *ssh)
{
	Authctxt *authctxt = ssh->authctxt;
	char *authlist = NULL;
	u_char partial;
	int r;

	if (authctxt == NULL)
		FUNC1("input_userauth_failure: no authentication context");

	if ((r = FUNC4(ssh, &authlist, NULL)) != 0 ||
	    (r = FUNC6(ssh, &partial)) != 0 ||
	    (r = FUNC5(ssh)) != 0)
		goto out;

	if (partial != 0) {
		FUNC8("Authenticated with partial success.");
		/* reset state */
		FUNC3(authctxt);
	}
	FUNC0("Authentications that can continue: %s", authlist);

	FUNC7(authctxt, authlist);
	authlist = NULL;
 out:
	FUNC2(authlist);
	return 0;
}