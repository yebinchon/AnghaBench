#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ssh {TYPE_3__* authctxt; } ;
struct TYPE_9__ {int postponed; TYPE_2__* kbdintctxt; } ;
struct TYPE_8__ {char* devices; TYPE_1__* device; int /*<<< orphan*/ * ctxt; } ;
struct TYPE_7__ {int /*<<< orphan*/ * (* init_ctx ) (TYPE_3__*) ;int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ KbdintAuthctxt ;
typedef  TYPE_3__ Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_USERAUTH_INFO_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  input_userauth_info_response ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC7(struct ssh *ssh)
{
	Authctxt *authctxt = ssh->authctxt;
	KbdintAuthctxt *kbdintctxt = authctxt->kbdintctxt;

	FUNC2("auth2_challenge_start: devices %s",
	    kbdintctxt->devices ?  kbdintctxt->devices : "<empty>");

	if (FUNC3(authctxt, kbdintctxt) == 0) {
		FUNC0(ssh);
		return 0;
	}
	FUNC1("auth2_challenge_start: trying authentication method '%s'",
	    kbdintctxt->device->name);

	if ((kbdintctxt->ctxt = kbdintctxt->device->init_ctx(authctxt)) == NULL) {
		FUNC0(ssh);
		return 0;
	}
	if (FUNC4(ssh) == 0) {
		FUNC0(ssh);
		return 0;
	}
	FUNC5(ssh, SSH2_MSG_USERAUTH_INFO_RESPONSE,
	    &input_userauth_info_response);

	authctxt->postponed = 1;
	return 0;
}