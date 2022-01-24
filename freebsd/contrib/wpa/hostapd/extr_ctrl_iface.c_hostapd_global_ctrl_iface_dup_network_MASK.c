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
struct hostapd_data {int dummy; } ;
struct hapd_interfaces {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (struct hostapd_data*,struct hostapd_data*,char*) ; 
 struct hostapd_data* FUNC1 (struct hapd_interfaces*,char*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC4(struct hapd_interfaces *interfaces,
				      char *cmd)
{
	char *p_start = cmd, *p_end;
	struct hostapd_data *src_hapd, *dst_hapd;

	/* cmd: "<src ifname> <dst ifname> <variable name> */

	p_end = FUNC2(p_start, ' ');
	if (!p_end) {
		FUNC3(MSG_ERROR, "DUP: no src ifname found in cmd: '%s'",
			   cmd);
		return -1;
	}

	*p_end = '\0';
	src_hapd = FUNC1(interfaces, p_start);
	if (!src_hapd) {
		FUNC3(MSG_ERROR, "DUP: no src ifname found: '%s'",
			   p_start);
		return -1;
	}

	p_start = p_end + 1;
	p_end = FUNC2(p_start, ' ');
	if (!p_end) {
		FUNC3(MSG_ERROR, "DUP: no dst ifname found in cmd: '%s'",
			   cmd);
		return -1;
	}

	*p_end = '\0';
	dst_hapd = FUNC1(interfaces, p_start);
	if (!dst_hapd) {
		FUNC3(MSG_ERROR, "DUP: no dst ifname found: '%s'",
			   p_start);
		return -1;
	}

	p_start = p_end + 1;
	return FUNC0(src_hapd, dst_hapd, p_start);
}