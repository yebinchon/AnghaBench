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

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  VERSION_STR ; 
 int FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC5(struct hostapd_data *hapd, char *cmd,
				  char *buf, size_t buflen)
{
	int res;

	FUNC4(MSG_DEBUG, "CTRL_IFACE GET '%s'", cmd);

	if (FUNC2(cmd, "version") == 0) {
		res = FUNC0(buf, buflen, "%s", VERSION_STR);
		if (FUNC1(buflen, res))
			return -1;
		return res;
	} else if (FUNC2(cmd, "tls_library") == 0) {
		res = FUNC3(buf, buflen);
		if (FUNC1(buflen, res))
			return -1;
		return res;
	}

	return -1;
}