#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ssh {TYPE_1__* authctxt; } ;
struct TYPE_3__ {int /*<<< orphan*/  success; } ;
typedef  TYPE_1__ Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_BLOCK ; 
 int /*<<< orphan*/  SSH2_MSG_SERVICE_REQUEST ; 
 struct ssh* active_state ; 
 int /*<<< orphan*/  dispatch_protocol_error ; 
 int /*<<< orphan*/  input_service_request ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(Authctxt *authctxt)
{
	struct ssh *ssh = active_state;		/* XXX */
	ssh->authctxt = authctxt;		/* XXX move to caller */
	FUNC0(ssh, &dispatch_protocol_error);
	FUNC2(ssh, SSH2_MSG_SERVICE_REQUEST, &input_service_request);
	FUNC1(ssh, DISPATCH_BLOCK, &authctxt->success);
	ssh->authctxt = NULL;
}