#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* n_long ;
struct TYPE_6__ {scalar_t__ s_addr; } ;

/* Variables and functions */
 int EIO ; 
 void* INADDR_NONE ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*,TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ debug ; 
 TYPE_1__ gateip ; 
 char* hostname ; 
 char* FUNC3 (TYPE_1__) ; 
 char* FUNC4 (void*) ; 
 void* FUNC5 (char*) ; 
 TYPE_1__ myip ; 
 void* FUNC6 () ; 
 void* netmask ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int) ; 
 TYPE_1__ rootip ; 
 char* rootpath ; 
 scalar_t__ try_bootp ; 

__attribute__((used)) static int
FUNC9(int sock)
{
	char buf[MAXHOSTNAMELEN];
	n_long rootaddr, smask;

#ifdef	SUPPORT_BOOTP
	/*
	 * Try to get boot info using BOOTP.  If we succeed, then
	 * the server IP address, gateway, and root path will all
	 * be initialized.  If any remain uninitialized, we will
	 * use RARP and RPC/bootparam (the Sun way) to get them.
	 */
	if (try_bootp)
		bootp(sock);
	if (myip.s_addr != 0)
		goto exit;
#ifdef	NETIF_DEBUG
	if (debug)
		printf("net_open: BOOTP failed, trying RARP/RPC...\n");
#endif
#endif

	/*
	 * Use RARP to get our IP address.  This also sets our
	 * netmask to the "natural" default for our address.
	 */
	if (FUNC8(sock)) {
		FUNC7("net_open: RARP failed\n");
		return (EIO);
	}
	FUNC7("net_open: client addr: %s\n", FUNC3(myip));

	/* Get our hostname, server IP address, gateway. */
	if (FUNC2(sock)) {
		FUNC7("net_open: bootparam/whoami RPC failed\n");
		return (EIO);
	}
#ifdef	NETIF_DEBUG
	if (debug)
		printf("net_open: client name: %s\n", hostname);
#endif

	/*
	 * Ignore the gateway from whoami (unreliable).
	 * Use the "gateway" parameter instead.
	 */
	smask = 0;
	gateip.s_addr = 0;
	if (FUNC1(sock, "gateway", &gateip, buf) == 0) {
		/* Got it!  Parse the netmask. */
		smask = FUNC5(buf);
	}
	if (smask) {
		netmask = smask;
#ifdef	NETIF_DEBUG
		if (debug)
			printf("net_open: subnet mask: %s\n", intoa(netmask));
#endif
	}
#ifdef	NETIF_DEBUG
	if (gateip.s_addr && debug)
		printf("net_open: net gateway: %s\n", inet_ntoa(gateip));
#endif

	/* Get the root server and pathname. */
	if (FUNC1(sock, "root", &rootip, rootpath)) {
		FUNC7("net_open: bootparam/getfile RPC failed\n");
		return (EIO);
	}
exit:
	if ((rootaddr = FUNC6()) != INADDR_NONE)
		rootip.s_addr = rootaddr;

#ifdef	NETIF_DEBUG
	if (debug) {
		printf("net_open: server addr: %s\n", inet_ntoa(rootip));
		printf("net_open: server path: %s\n", rootpath);
	}
#endif

	return (0);
}