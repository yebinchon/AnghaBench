#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char** (* completion ) (char const*,int) ;char* usage; scalar_t__ cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* hostapd_cli_commands ; 
 scalar_t__ FUNC2 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char** FUNC4 (char const*,int) ; 

__attribute__((used)) static char ** FUNC5(const char *cmd, const char *str,
				      int pos)
{
	int i;

	for (i = 0; hostapd_cli_commands[i].cmd; i++) {
		if (FUNC2(hostapd_cli_commands[i].cmd, cmd) != 0)
			continue;
		if (hostapd_cli_commands[i].completion)
			return hostapd_cli_commands[i].completion(str, pos);
		if (!hostapd_cli_commands[i].usage)
			return NULL;
		FUNC0();
		FUNC3("\r%s\n", hostapd_cli_commands[i].usage);
		FUNC1();
		break;
	}

	return NULL;
}