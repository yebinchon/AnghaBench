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
struct ssh {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_REQUEST_FAILURE ; 
 int /*<<< orphan*/  SSH2_MSG_REQUEST_SUCCESS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static int
FUNC9(int type, u_int32_t seq, struct ssh *ssh)
{
	char *rtype;
	int want_reply;
	int success = 0;

	rtype = FUNC4(NULL);
	want_reply = FUNC3();
	FUNC1("client_input_global_request: rtype %s want_reply %d",
	    rtype, want_reply);
	if (FUNC8(rtype, "hostkeys-00@openssh.com") == 0)
		success = FUNC0();
	if (want_reply) {
		FUNC6(success ?
		    SSH2_MSG_REQUEST_SUCCESS : SSH2_MSG_REQUEST_FAILURE);
		FUNC5();
		FUNC7();
	}
	FUNC2(rtype);
	return 0;
}