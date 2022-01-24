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
struct hs20_osu_client {int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct hs20_osu_client *ctx,
					    int id, xml_node_t *node)
{
	xml_node_t *ssid_node, *hessid_node;
	char *ssid, *hessid;

	ssid_node = FUNC0(ctx->xml, node, "SSID");
	if (ssid_node == NULL) {
		FUNC1(MSG_INFO, "Ignore HomeSP/NetworkID without mandatory SSID node");
		return;
	}

	hessid_node = FUNC0(ctx->xml, node, "HESSID");

	ssid = FUNC2(ctx->xml, ssid_node);
	if (ssid == NULL)
		return;
	hessid = hessid_node ? FUNC2(ctx->xml, hessid_node) : NULL;

	FUNC1(MSG_INFO, "- HomeSP/NetworkID/<X+>/SSID = %s", ssid);
	if (hessid)
		FUNC1(MSG_INFO, "- HomeSP/NetworkID/<X+>/HESSID = %s",
			   hessid);

	/* TODO: Configure to wpa_supplicant */

	FUNC3(ctx->xml, ssid);
	FUNC3(ctx->xml, hessid);
}