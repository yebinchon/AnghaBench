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
struct upnp_wps_device_sm {int /*<<< orphan*/  ssdp_sd; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int MULTICAST_MAX_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct upnp_wps_device_sm*,struct sockaddr_in*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 size_t FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC11(int sd, void *eloop_ctx, void *sock_ctx)
{
	struct upnp_wps_device_sm *sm = sock_ctx;
	struct sockaddr_in addr; /* client address */
	socklen_t addr_len;
	int nread;
	char buf[MULTICAST_MAX_READ], *pos;

	addr_len = sizeof(addr);
	nread = FUNC6(sm->ssdp_sd, buf, sizeof(buf) - 1, 0,
			 (struct sockaddr *) &addr, &addr_len);
	if (nread <= 0)
		return;
	buf[nread] = '\0'; /* need null termination for algorithm */

	if (FUNC8(buf, "NOTIFY ")) {
		/*
		 * Silently ignore NOTIFYs to avoid filling debug log with
		 * unwanted messages.
		 */
		return;
	}

	pos = FUNC3(buf, '\n');
	if (pos)
		*pos = '\0';
	FUNC10(MSG_MSGDUMP, "WPS UPnP: Received SSDP packet from %s:%d: "
		   "%s", FUNC0(addr.sin_addr), FUNC2(addr.sin_port), buf);
	if (pos)
		*pos = '\n';

	/* Parse first line */
	if (FUNC5(buf, "M-SEARCH", FUNC4("M-SEARCH")) == 0 &&
	    !FUNC1(buf[FUNC9("M-SEARCH")])) {
		FUNC7(sm, &addr, buf);
		return;
	}

	/* Ignore anything else */
}