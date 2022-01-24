#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_5__ {scalar_t__ tun_open; } ;
struct TYPE_4__ {int datagram; int self; int local_window_max; int local_maxpacket; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_TCP_PACKET_DEFAULT ; 
 int /*<<< orphan*/  CHAN_TCP_WINDOW_DEFAULT ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_OPEN ; 
 int /*<<< orphan*/  SSH_CHANNEL_OPENING ; 
 int SSH_TUNMODE_NO ; 
 scalar_t__ SSH_TUNMODE_POINTOPOINT ; 
 TYPE_1__* FUNC0 (struct ssh*,char*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__ options ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sys_tun_infilter ; 
 int /*<<< orphan*/  sys_tun_outfilter ; 
 int FUNC8 (int,int,char**) ; 

char *
FUNC9(struct ssh *ssh, int tun_mode,
    int local_tun, int remote_tun)
{
	Channel *c;
	int fd;
	char *ifname = NULL;

	if (tun_mode == SSH_TUNMODE_NO)
		return 0;

	FUNC2("Requesting tun unit %d in mode %d", local_tun, tun_mode);

	/* Open local tunnel device */
	if ((fd = FUNC8(local_tun, tun_mode, &ifname)) == -1) {
		FUNC3("Tunnel device open failed.");
		return NULL;
	}
	FUNC2("Tunnel forwarding using interface %s", ifname);

	c = FUNC0(ssh, "tun", SSH_CHANNEL_OPENING, fd, fd, -1,
	    CHAN_TCP_WINDOW_DEFAULT, CHAN_TCP_PACKET_DEFAULT, 0, "tun", 1);
	c->datagram = 1;

#if defined(SSH_TUN_FILTER)
	if (options.tun_open == SSH_TUNMODE_POINTOPOINT)
		channel_register_filter(ssh, c->self, sys_tun_infilter,
		    sys_tun_outfilter, NULL, NULL);
#endif

	FUNC7(SSH2_MSG_CHANNEL_OPEN);
	FUNC4("tun@openssh.com");
	FUNC5(c->self);
	FUNC5(c->local_window_max);
	FUNC5(c->local_maxpacket);
	FUNC5(tun_mode);
	FUNC5(remote_tun);
	FUNC6();

	return ifname;
}