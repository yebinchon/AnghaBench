#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_13__ {int allow_tcp_forwarding; scalar_t__ disable_forwarding; } ;
struct TYPE_12__ {int /*<<< orphan*/  pw_name; } ;
struct TYPE_11__ {int /*<<< orphan*/  permit_port_forwarding_flag; } ;
struct TYPE_10__ {int /*<<< orphan*/  session_info; TYPE_3__* pw; } ;
typedef  TYPE_1__ Authctxt ;

/* Variables and functions */
 int FORWARD_LOCAL ; 
 int FORWARD_REMOTE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* auth_opts ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssh*,TYPE_1__*) ; 
 TYPE_4__ options ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ssh*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

void
FUNC9(struct ssh *ssh, Authctxt *authctxt)
{
	FUNC8("%s", authctxt->pw->pw_name);

	FUNC1("active", auth_opts, 0);

	/* setup the channel layer */
	/* XXX - streamlocal? */
	FUNC7(ssh, auth_opts);

	if (!auth_opts->permit_port_forwarding_flag ||
	    options.disable_forwarding) {
		FUNC2(ssh, FORWARD_LOCAL);
		FUNC2(ssh, FORWARD_REMOTE);
	} else {
		if ((options.allow_tcp_forwarding & FORWARD_LOCAL) == 0)
			FUNC2(ssh, FORWARD_LOCAL);
		else
			FUNC3(ssh, FORWARD_LOCAL);
		if ((options.allow_tcp_forwarding & FORWARD_REMOTE) == 0)
			FUNC2(ssh, FORWARD_REMOTE);
		else
			FUNC3(ssh, FORWARD_REMOTE);
	}
	FUNC0();

	FUNC6(authctxt->pw, authctxt->session_info);

	FUNC4(ssh, authctxt);

	FUNC5(ssh, authctxt);
}