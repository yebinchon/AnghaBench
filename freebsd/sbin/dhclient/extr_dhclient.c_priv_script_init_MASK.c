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
struct interface_info {char const* name; TYPE_1__* client; } ;
struct TYPE_2__ {int scriptEnvsize; int /*<<< orphan*/ ** scriptEnv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct interface_info* ifi ; 
 int /*<<< orphan*/ ** FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(const char *reason, char *medium)
{
	struct interface_info *ip = ifi;

	if (ip) {
		ip->client->scriptEnvsize = 100;
		if (ip->client->scriptEnv == NULL)
			ip->client->scriptEnv =
			    FUNC1(ip->client->scriptEnvsize * sizeof(char *));
		if (ip->client->scriptEnv == NULL)
			FUNC0("script_init: no memory for environment");

		ip->client->scriptEnv[0] = FUNC3(CLIENT_PATH);
		if (ip->client->scriptEnv[0] == NULL)
			FUNC0("script_init: no memory for environment");

		ip->client->scriptEnv[1] = NULL;

		FUNC2(ip->client, "", "interface", ip->name);

		if (medium)
			FUNC2(ip->client, "", "medium", medium);

		FUNC2(ip->client, "", "reason", reason);
	}
}