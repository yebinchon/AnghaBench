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
struct hs20_osu_client {int /*<<< orphan*/  ifname; int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct hs20_osu_client *ctx,
						 int id, xml_node_t *node)
{
	char *str = FUNC3(ctx->xml, node);
	const char *phase2 = NULL;

	if (!str)
		return;
	FUNC2(MSG_INFO,
		   "- Credential/UsernamePassword/EAPMethod/InnerMethod = %s",
		   str);
	if (FUNC0(str, "PAP") == 0)
		phase2 = "auth=PAP";
	else if (FUNC0(str, "CHAP") == 0)
		phase2 = "auth=CHAP";
	else if (FUNC0(str, "MS-CHAP") == 0)
		phase2 = "auth=MSCHAP";
	else if (FUNC0(str, "MS-CHAP-V2") == 0)
		phase2 = "auth=MSCHAPV2";
	FUNC4(ctx->xml, str);
	if (!phase2) {
		FUNC2(MSG_INFO, "Unknown InnerMethod value");
		return;
	}

	if (FUNC1(ctx->ifname, id, "phase2", phase2) < 0)
		FUNC2(MSG_INFO, "Failed to set cred phase2");
}