#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  self; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_SES_PACKET_DEFAULT ; 
 int /*<<< orphan*/  SSH_CHANNEL_LARVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct ssh*,char*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ no_more_sessions ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  session_close_by_channel ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_authctxt ; 

__attribute__((used)) static Channel *
FUNC7(struct ssh *ssh)
{
	Channel *c;

	FUNC3("input_session_request");
	FUNC4();

	if (no_more_sessions) {
		FUNC5("Possible attack: attempt to open a session "
		    "after additional sessions disabled");
	}

	/*
	 * A server session has no fd to read or write until a
	 * CHANNEL_REQUEST for a shell is made, so we set the type to
	 * SSH_CHANNEL_LARVAL.  Additionally, a callback for handling all
	 * CHANNEL_REQUEST messages is registered.
	 */
	c = FUNC1(ssh, "session", SSH_CHANNEL_LARVAL,
	    -1, -1, -1, /*window size*/0, CHAN_SES_PACKET_DEFAULT,
	    0, "server-session", 1);
	if (FUNC6(the_authctxt, c->self) != 1) {
		FUNC3("session open failed, free channel %d", c->self);
		FUNC0(ssh, c);
		return NULL;
	}
	FUNC2(ssh, c->self, session_close_by_channel, 0);
	return c;
}