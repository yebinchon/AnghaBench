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
struct hostapd_ip_addr {scalar_t__ af; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 char* FUNC0 (struct hostapd_ip_addr*,char*,int) ; 
 scalar_t__ FUNC1 (char*,struct hostapd_ip_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(void)
{
	int errors = 0;
	struct hostapd_ip_addr addr;
	char buf[100];

	FUNC2(MSG_INFO, "ip_addr tests");

	if (FUNC1("1.2.3.4", &addr) != 0 ||
	    addr.af != AF_INET ||
	    FUNC0(NULL, buf, sizeof(buf)) != NULL ||
	    FUNC0(&addr, buf, 1) != buf || buf[0] != '\0' ||
	    FUNC0(&addr, buf, 0) != NULL ||
	    FUNC0(&addr, buf, sizeof(buf)) != buf)
		errors++;

	if (FUNC1("::", &addr) != 0 ||
	    addr.af != AF_INET6 ||
	    FUNC0(&addr, buf, 1) != buf || buf[0] != '\0' ||
	    FUNC0(&addr, buf, sizeof(buf)) != buf)
		errors++;

	if (errors) {
		FUNC2(MSG_ERROR, "%d ip_addr test(s) failed", errors);
		return -1;
	}

	return 0;
}