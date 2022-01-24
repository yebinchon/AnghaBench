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
struct hs20_osu_client {int /*<<< orphan*/  ifname; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct hs20_osu_client *ctx, const char *fqdn)
{
	char cmd[300];
	FUNC0(cmd, sizeof(cmd), "REMOVE_CRED provisioning_sp=%s", fqdn);
	if (FUNC1(ctx->ifname, cmd) < 0)
		FUNC2(MSG_INFO, "Failed to remove old credential(s)");
}