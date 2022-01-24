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
struct hv_kvp_ipaddr_value {int dhcp_enabled; scalar_t__ dns_addr; scalar_t__ gate_way; } ;
typedef  int /*<<< orphan*/  dhcp_info ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  INET_ADDRSTRLEN ; 
 int MAX_GATEWAY_SIZE ; 
 int MAX_IP_ADDR_SIZE ; 
 char* FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC6(char *if_name, struct hv_kvp_ipaddr_value *buffer)
{
	char cmd[512];
	char dhcp_info[128];
	char *p;
	FILE *file;

	/*
	 * Retrieve the IPV4 address of default gateway.
	 */
	FUNC4(cmd, sizeof(cmd), "netstat -rn | grep %s | awk '/default/ {print $2 }'", if_name);

	/*
	 * Execute the command to gather gateway IPV4 info.
	 */
	FUNC1(cmd, (char *)buffer->gate_way,
	    (MAX_GATEWAY_SIZE * 2), INET_ADDRSTRLEN, 0);
	/*
	 * Retrieve the IPV6 address of default gateway.
	 */
	FUNC4(cmd, sizeof(cmd), "netstat -rn inet6 | grep %s | awk '/default/ {print $2 }'", if_name);

	/*
	 * Execute the command to gather gateway IPV6 info.
	 */
	FUNC1(cmd, (char *)buffer->gate_way,
	    (MAX_GATEWAY_SIZE * 2), INET6_ADDRSTRLEN, 1);
	/*
	 * we just invoke an external script to get the DNS info.
	 *
	 * Following is the expected format of the information from the script:
	 *
	 * ipaddr1 (nameserver1)
	 * ipaddr2 (nameserver2)
	 * .
	 * .
	 */
	/* Scripts are stored in /usr/libexec/hyperv/ directory */
	FUNC4(cmd, sizeof(cmd), "%s", "sh /usr/libexec/hyperv/hv_get_dns_info");

	/*
	 * Execute the command to get DNS info.
	 */
	FUNC1(cmd, (char *)buffer->dns_addr,
	    (MAX_IP_ADDR_SIZE * 2), INET_ADDRSTRLEN, 0);

	/*
	 * Invoke an external script to get the DHCP state info.
	 * The parameter to the script is the interface name.
	 * Here is the expected output:
	 *
	 * Enabled: DHCP enabled.
	 */


	FUNC4(cmd, sizeof(cmd), "%s %s",
	    "sh /usr/libexec/hyperv/hv_get_dhcp_info", if_name);

	file = FUNC3(cmd, "r");
	if (file == NULL) {
		return;
	}

	p = FUNC0(dhcp_info, sizeof(dhcp_info), file);
	if (p == NULL) {
		FUNC2(file);
		return;
	}

	if (!FUNC5(p, "Enabled", 7)) {
		buffer->dhcp_enabled = 1;
	} else{
		buffer->dhcp_enabled = 0;
	}

	FUNC2(file);
}