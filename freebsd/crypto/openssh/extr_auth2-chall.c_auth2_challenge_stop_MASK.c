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
struct ssh {TYPE_1__* authctxt; } ;
struct TYPE_2__ {int /*<<< orphan*/ * kbdintctxt; } ;
typedef  TYPE_1__ Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_USERAUTH_INFO_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct ssh *ssh)
{
	Authctxt *authctxt = ssh->authctxt;
	/* unregister callback */
	FUNC1(ssh, SSH2_MSG_USERAUTH_INFO_RESPONSE, NULL);
	if (authctxt->kbdintctxt != NULL) {
		FUNC0(authctxt->kbdintctxt);
		authctxt->kbdintctxt = NULL;
	}
}