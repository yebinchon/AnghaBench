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
struct hv_kvp_ipaddr_value {scalar_t__ dhcp_enabled; scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; scalar_t__ ip_addr; } ;
typedef  int /*<<< orphan*/  if_file ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(char *if_name, struct hv_kvp_ipaddr_value *new_val)
{
	int error = 0;
	char if_file[128];
	FILE *file;
	char cmd[512];
	char *mac_addr;

	/*
	 * FreeBSD - Configuration File
	 */
	FUNC6(if_file, sizeof(if_file), "%s%s", "/var/db/hyperv",
	    "hv_set_ip_data");
	file = FUNC2(if_file, "w");

	if (file == NULL) {
		FUNC0(LOG_ERR, "FreeBSD Failed to open config file\n");
		return (errno);
	}

	/*
	 * Write out the MAC address.
	 */

	mac_addr = FUNC4(if_name);
	if (mac_addr == NULL) {
		error = EINVAL;
		goto kvp_set_ip_info_error;
	}
	/* MAC Address */
	error = FUNC5(file, "HWADDR", "", mac_addr);
	if (error) {
		goto kvp_set_ip_info_error;
	}

	/* Interface Name  */
	error = FUNC5(file, "IF_NAME", "", if_name);
	if (error) {
		goto kvp_set_ip_info_error;
	}

	/* IP Address  */
	error = FUNC5(file, "IP_ADDR", "",
	    (char *)new_val->ip_addr);
	if (error) {
		goto kvp_set_ip_info_error;
	}

	/* Subnet Mask */
	error = FUNC5(file, "SUBNET", "",
	    (char *)new_val->sub_net);
	if (error) {
		goto kvp_set_ip_info_error;
	}


	/* Gateway */
	error = FUNC5(file, "GATEWAY", "",
	    (char *)new_val->gate_way);
	if (error) {
		goto kvp_set_ip_info_error;
	}

	/* DNS */
	error = FUNC5(file, "DNS", "", (char *)new_val->dns_addr);
	if (error) {
		goto kvp_set_ip_info_error;
	}

	/* DHCP */
	if (new_val->dhcp_enabled) {
		error = FUNC5(file, "DHCP", "", "1");
	} else{
		error = FUNC5(file, "DHCP", "", "0");
	}

	if (error) {
		goto kvp_set_ip_info_error;
	}

	FUNC3(mac_addr);
	FUNC1(file);

	/*
	 * Invoke the external script with the populated
	 * configuration file.
	 */

	FUNC6(cmd, sizeof(cmd), "%s %s",
	    "sh /usr/libexec/hyperv/hv_set_ifconfig", if_file);
	FUNC7(cmd);
	return (0);

kvp_set_ip_info_error:
	FUNC0(LOG_ERR, "Failed to write config file\n");
	FUNC3(mac_addr);
	FUNC1(file);
	return (error);
}