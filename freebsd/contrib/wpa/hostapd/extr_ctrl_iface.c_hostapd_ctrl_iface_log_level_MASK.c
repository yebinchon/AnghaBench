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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 int wpa_debug_level ; 
 int /*<<< orphan*/  wpa_debug_timestamp ; 

__attribute__((used)) static int FUNC8(struct hostapd_data *hapd, char *cmd,
					char *buf, size_t buflen)
{
	char *pos, *end, *stamp;
	int ret;

	/* cmd: "LOG_LEVEL [<level>]" */
	if (*cmd == '\0') {
		pos = buf;
		end = buf + buflen;
		ret = FUNC3(pos, end - pos, "Current level: %s\n"
				  "Timestamp: %d\n",
				  FUNC1(wpa_debug_level),
				  wpa_debug_timestamp);
		if (FUNC4(end - pos, ret))
			ret = 0;

		return ret;
	}

	while (*cmd == ' ')
		cmd++;

	stamp = FUNC5(cmd, ' ');
	if (stamp) {
		*stamp++ = '\0';
		while (*stamp == ' ') {
			stamp++;
		}
	}

	if (FUNC6(cmd)) {
		int level = FUNC7(cmd);
		if (level < 0)
			return -1;
		wpa_debug_level = level;
	}

	if (stamp && FUNC6(stamp))
		wpa_debug_timestamp = FUNC0(stamp);

	FUNC2(buf, "OK\n", 3);
	return 3;
}