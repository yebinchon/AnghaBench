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
typedef  int /*<<< orphan*/  pcap_if_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETLINK ; 
 scalar_t__ EAFNOSUPPORT ; 
 scalar_t__ EPROTONOSUPPORT ; 
 int /*<<< orphan*/  NETLINK_NETFILTER ; 
 int /*<<< orphan*/  NFLOG_IFACE ; 
 int /*<<< orphan*/  NFQUEUE_IFACE ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(pcap_if_list_t *devlistp, char *err_str)
{
	int sock;

	sock = FUNC3(AF_NETLINK, SOCK_RAW, NETLINK_NETFILTER);
	if (sock < 0) {
		/* if netlink is not supported this is not fatal */
		if (errno == EAFNOSUPPORT || errno == EPROTONOSUPPORT)
			return 0;
		FUNC2(err_str, PCAP_ERRBUF_SIZE,
		    errno, "Can't open netlink socket");
		return -1;
	}
	FUNC1(sock);

	/*
	 * The notion of "connected" vs. "disconnected" doesn't apply.
	 * XXX - what about "up" and "running"?
	 */
	if (FUNC0(devlistp, NFLOG_IFACE,
	    PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE,
	    "Linux netfilter log (NFLOG) interface", err_str) == NULL)
		return -1;
	if (FUNC0(devlistp, NFQUEUE_IFACE,
	    PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE,
	    "Linux netfilter queue (NFQUEUE) interface", err_str) == NULL)
		return -1;
	return 0;
}