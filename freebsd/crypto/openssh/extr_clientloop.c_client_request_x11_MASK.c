#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_int ;
struct ssh {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  forward_x11; } ;
struct TYPE_5__ {int force_drain; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_TCP_WINDOW_DEFAULT ; 
 int /*<<< orphan*/  CHAN_X11_PACKET_DEFAULT ; 
 int /*<<< orphan*/  SSH_CHANNEL_X11_OPEN ; 
 TYPE_1__* FUNC0 (struct ssh*,char*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_2__ options ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct ssh*) ; 
 scalar_t__ x11_refuse_time ; 

__attribute__((used)) static Channel *
FUNC10(struct ssh *ssh, const char *request_type, int rchan)
{
	Channel *c = NULL;
	char *originator;
	u_short originator_port;
	int sock;

	if (!options.forward_x11) {
		FUNC2("Warning: ssh server tried X11 forwarding.");
		FUNC2("Warning: this is probably a break-in attempt by a "
		    "malicious server.");
		return NULL;
	}
	if (x11_refuse_time != 0 && (u_int)FUNC4() >= x11_refuse_time) {
		FUNC8("Rejected X11 connection after ForwardX11Timeout "
		    "expired");
		return NULL;
	}
	originator = FUNC7(NULL);
	originator_port = FUNC6();
	FUNC5();
	/* XXX check permission */
	FUNC1("client_request_x11: request from %s %d", originator,
	    originator_port);
	FUNC3(originator);
	sock = FUNC9(ssh);
	if (sock < 0)
		return NULL;
	c = FUNC0(ssh, "x11",
	    SSH_CHANNEL_X11_OPEN, sock, sock, -1,
	    CHAN_TCP_WINDOW_DEFAULT, CHAN_X11_PACKET_DEFAULT, 0, "x11", 1);
	c->force_drain = 1;
	return c;
}