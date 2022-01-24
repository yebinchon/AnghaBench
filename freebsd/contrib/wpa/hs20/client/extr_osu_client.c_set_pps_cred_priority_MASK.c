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
typedef  int /*<<< orphan*/  xml_node_t ;
struct hs20_osu_client {int /*<<< orphan*/  xml; int /*<<< orphan*/  ifname; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct hs20_osu_client *ctx, int id,
				  xml_node_t *node)
{
	char *str = FUNC2(ctx->xml, node);
	if (str == NULL)
		return;
	FUNC1(MSG_INFO, "- CredentialPriority = %s", str);
	if (FUNC0(ctx->ifname, id, "sp_priority", str) < 0)
		FUNC1(MSG_INFO, "Failed to set cred sp_priority");
	FUNC3(ctx->xml, str);
}