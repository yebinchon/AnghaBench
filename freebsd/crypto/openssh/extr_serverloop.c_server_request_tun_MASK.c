#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_8__ {int force_tun_device; } ;
struct TYPE_7__ {int permit_tun; } ;
struct TYPE_6__ {int datagram; int /*<<< orphan*/  self; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_TCP_PACKET_DEFAULT ; 
 int /*<<< orphan*/  CHAN_TCP_WINDOW_DEFAULT ; 
 int /*<<< orphan*/  SSH_CHANNEL_OPEN ; 
 int SSH_TUNID_ANY ; 
#define  SSH_TUNMODE_ETHERNET 129 
#define  SSH_TUNMODE_POINTOPOINT 128 
 TYPE_5__* auth_opts ; 
 TYPE_1__* FUNC0 (struct ssh*,char*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_3__ options ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  sys_tun_infilter ; 
 int /*<<< orphan*/  sys_tun_outfilter ; 
 char* tun_fwd_ifnames ; 
 int FUNC6 (int,int,char**) ; 
 int /*<<< orphan*/  FUNC7 (char**,char*,char*,char*,char*) ; 

__attribute__((used)) static Channel *
FUNC8(struct ssh *ssh)
{
	Channel *c = NULL;
	int mode, tun, sock;
	char *tmp, *ifname = NULL;

	mode = FUNC4();
	switch (mode) {
	case SSH_TUNMODE_POINTOPOINT:
	case SSH_TUNMODE_ETHERNET:
		break;
	default:
		FUNC5("Unsupported tunnel device mode.");
		return NULL;
	}
	if ((options.permit_tun & mode) == 0) {
		FUNC5("Server has rejected tunnel device "
		    "forwarding");
		return NULL;
	}

	tun = FUNC4();
	if (auth_opts->force_tun_device != -1) {
		if (tun != SSH_TUNID_ANY && auth_opts->force_tun_device != tun)
			goto done;
		tun = auth_opts->force_tun_device;
	}
	sock = FUNC6(tun, mode, &ifname);
	if (sock < 0)
		goto done;
	FUNC2("Tunnel forwarding using interface %s", ifname);

	c = FUNC0(ssh, "tun", SSH_CHANNEL_OPEN, sock, sock, -1,
	    CHAN_TCP_WINDOW_DEFAULT, CHAN_TCP_PACKET_DEFAULT, 0, "tun", 1);
	c->datagram = 1;
#if defined(SSH_TUN_FILTER)
	if (mode == SSH_TUNMODE_POINTOPOINT)
		channel_register_filter(ssh, c->self, sys_tun_infilter,
		    sys_tun_outfilter, NULL, NULL);
#endif

	/*
	 * Update the list of names exposed to the session
	 * XXX remove these if the tunnels are closed (won't matter
	 * much if they are already in the environment though)
	 */
	tmp = tun_fwd_ifnames;
	FUNC7(&tun_fwd_ifnames, "%s%s%s",
	    tun_fwd_ifnames == NULL ? "" : tun_fwd_ifnames,
	    tun_fwd_ifnames == NULL ? "" : ",",
	    ifname);
	FUNC3(tmp);
	FUNC3(ifname);

 done:
	if (c == NULL)
		FUNC5("Failed to open the tunnel device.");
	return c;
}