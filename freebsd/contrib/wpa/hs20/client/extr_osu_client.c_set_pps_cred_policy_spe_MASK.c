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
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct hs20_osu_client *ctx, int id,
				    xml_node_t *spe)
{
	xml_node_t *ssid;
	char *txt;

	ssid = FUNC0(ctx->xml, spe, "SSID");
	if (ssid == NULL)
		return;
	txt = FUNC3(ctx->xml, ssid);
	if (txt == NULL)
		return;
	FUNC2(MSG_DEBUG, "- Policy/SPExclusionList/<X+>/SSID = %s", txt);
	if (FUNC1(ctx->ifname, id, "excluded_ssid", txt) < 0)
		FUNC2(MSG_INFO, "Failed to set cred excluded_ssid");
	FUNC4(ctx->xml, txt);
}