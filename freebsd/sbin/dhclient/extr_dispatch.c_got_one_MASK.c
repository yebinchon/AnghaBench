#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct protocol {int /*<<< orphan*/  fd; struct interface_info* local; } ;
struct interface_info {int errors; int dead; int /*<<< orphan*/  name; scalar_t__ noifmedia; } ;
struct iaddr {int len; int /*<<< orphan*/  iabuf; } ;
struct hardware {int dummy; } ;
struct dhcp_packet {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct interface_info*,struct dhcp_packet*,int,int /*<<< orphan*/ ,struct iaddr,struct hardware*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct interface_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct interface_info*) ; 
 int interfaces_invalidated ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct interface_info*,unsigned char*,int,struct sockaddr_in*,struct hardware*) ; 
 int /*<<< orphan*/  FUNC6 (struct protocol*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct interface_info*,struct dhcp_packet*,int,int /*<<< orphan*/ ,struct iaddr,struct hardware*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 

void
FUNC10(struct protocol *l)
{
	struct sockaddr_in from;
	struct hardware hfrom;
	struct iaddr ifrom;
	ssize_t result;
	union {
		/*
		 * Packet input buffer.  Must be as large as largest
		 * possible MTU.
		 */
		unsigned char packbuf[4095];
		struct dhcp_packet packet;
	} u;
	struct interface_info *ip = l->local;

	if ((result = FUNC5(ip, u.packbuf, sizeof(u), &from,
	    &hfrom)) == -1) {
		FUNC9("receive_packet failed on %s: %s", ip->name,
		    FUNC7(errno));
		ip->errors++;
		if ((!FUNC3(ip)) ||
		    (ip->noifmedia && ip->errors > 20)) {
			/* our interface has gone away. */
			FUNC9("Interface %s no longer appears valid.",
			    ip->name);
			ip->dead = 1;
			interfaces_invalidated = 1;
			FUNC1(l->fd);
			FUNC6(l);
			FUNC2(ip);
		}
		return;
	}
	if (result == 0)
		return;

	if (&bootp_packet_handler) {
		ifrom.len = 4;
		FUNC4(ifrom.iabuf, &from.sin_addr, ifrom.len);

		FUNC0)(ip, &u.packet, result,
		    from.sin_port, ifrom, &hfrom);
	}
}