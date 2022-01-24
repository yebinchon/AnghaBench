#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct ip {int ip_p; int /*<<< orphan*/  ip_len; } ;
typedef  int socklen_t ;
struct TYPE_4__ {char* name; int aliasOverhead; int ifMTU; scalar_t__ logDropped; scalar_t__ dropIgnoredIncoming; scalar_t__ assignAliasAddr; int /*<<< orphan*/  ifName; } ;

/* Variables and functions */
 int DONT_KNOW ; 
 scalar_t__ EACCES ; 
 int EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EMSGSIZE ; 
 scalar_t__ INADDR_ANY ; 
 int INPUT ; 
#define  IPPROTO_ICMP 130 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int IP_MAXPACKET ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int OUTPUT ; 
 int PKT_ALIAS_IGNORED ; 
 int /*<<< orphan*/  FUNC2 (struct ip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ip*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ip*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ background ; 
 scalar_t__ dynamicMode ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  icmpSock ; 
 scalar_t__ logIpfwDenied ; 
 TYPE_2__* mip ; 
 int /*<<< orphan*/  mla ; 
 int ninstance ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC11 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC14 (int fd, int direction)
{
	int			bytes;
	int			origBytes;
	char			buf[IP_MAXPACKET];
	struct sockaddr_in	addr;
	int			wrote;
	int			status;
	socklen_t		addrSize;
	struct ip*		ip;
	char			msgBuf[80];
	int			rval;

	if (mip->assignAliasAddr) {
		do {
			rval = FUNC4 (mip->ifName);
			if (background == 0 || dynamicMode == 0)
				break;
			if (rval == EAGAIN)
				FUNC12(1);
		} while (rval == EAGAIN);
		if (rval != 0)
			FUNC7(1);
		mip->assignAliasAddr = 0;
	}
/*
 * Get packet from socket.
 */
	addrSize  = sizeof addr;
	origBytes = FUNC10 (fd,
			      buf,
			      sizeof buf,
			      0,
			      (struct sockaddr*) &addr,
			      &addrSize);

	if (origBytes == -1) {

		if (errno != EINTR)
			FUNC6 ("read from divert socket failed");

		return;
	}
/*
 * This is an IP packet.
 */
	ip = (struct ip*) buf;
	if (direction == DONT_KNOW) {
		if (addr.sin_addr.s_addr == INADDR_ANY)
			direction = OUTPUT;
		else
			direction = INPUT;
	}

	if (verbose) {
/*
 * Print packet direction and protocol type.
 */
		FUNC9 (direction == OUTPUT ? "Out " : "In  ");
		if (ninstance > 1)
			FUNC9 ("{%s}", mip->name);

		switch (ip->ip_p) {
		case IPPROTO_TCP:
			FUNC9 ("[TCP]  ");
			break;

		case IPPROTO_UDP:
			FUNC9 ("[UDP]  ");
			break;

		case IPPROTO_ICMP:
			FUNC9 ("[ICMP] ");
			break;

		default:
			FUNC9 ("[%d]    ", ip->ip_p);
			break;
		}
/*
 * Print addresses.
 */
		FUNC2 (ip);
	}

	if (direction == OUTPUT) {
/*
 * Outgoing packets. Do aliasing.
 */
		FUNC1 (mla, buf, IP_MAXPACKET);
	}
	else {

/*
 * Do aliasing.
 */	
		status = FUNC0 (mla, buf, IP_MAXPACKET);
		if (status == PKT_ALIAS_IGNORED &&
		    mip->dropIgnoredIncoming) {

			if (verbose)
				FUNC9 (" dropped.\n");

			if (mip->logDropped)
				FUNC5 (ip, LOG_WARNING, "denied");

			return;
		}
	}
/*
 * Length might have changed during aliasing.
 */
	bytes = FUNC8 (ip->ip_len);
/*
 * Update alias overhead size for outgoing packets.
 */
	if (direction == OUTPUT &&
	    bytes - origBytes > mip->aliasOverhead)
		mip->aliasOverhead = bytes - origBytes;

	if (verbose) {
		
/*
 * Print addresses after aliasing.
 */
		FUNC9 (" aliased to\n");
		FUNC9 ("           ");
		FUNC2 (ip);
		FUNC9 ("\n");
	}

/*
 * Put packet back for processing.
 */
	wrote = FUNC11 (fd, 
		        buf,
	    		bytes,
	    		0,
	    		(struct sockaddr*) &addr,
	    		sizeof addr);
	
	if (wrote != bytes) {

		if (errno == EMSGSIZE) {

			if (direction == OUTPUT &&
			    mip->ifMTU != -1)
				FUNC3 (icmpSock,
						  (struct ip*) buf,
						  mip->ifMTU - mip->aliasOverhead);
		}
		else if (errno == EACCES && logIpfwDenied) {

			FUNC13 (msgBuf, "failed to write packet back");
			FUNC6 (msgBuf);
		}
	}
}