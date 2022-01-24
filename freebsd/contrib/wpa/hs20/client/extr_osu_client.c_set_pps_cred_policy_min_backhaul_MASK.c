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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct hs20_osu_client *ctx, int id,
					     xml_node_t *min_backhaul)
{
	xml_node_t *node;
	char *type, *dl = NULL, *ul = NULL;
	int home;

	node = FUNC0(ctx->xml, min_backhaul, "NetworkType");
	if (node == NULL) {
		FUNC3(MSG_INFO, "Ignore MinBackhaulThreshold without mandatory NetworkType node");
		return;
	}

	type = FUNC4(ctx->xml, node);
	if (type == NULL)
		return;
	FUNC3(MSG_INFO, "- Policy/MinBackhaulThreshold/<X+>/NetworkType = %s",
		   type);
	if (FUNC1(type, "home") == 0)
		home = 1;
	else if (FUNC1(type, "roaming") == 0)
		home = 0;
	else {
		FUNC3(MSG_INFO, "Ignore MinBackhaulThreshold with invalid NetworkType");
		FUNC5(ctx->xml, type);
		return;
	}
	FUNC5(ctx->xml, type);

	node = FUNC0(ctx->xml, min_backhaul, "DLBandwidth");
	if (node)
		dl = FUNC4(ctx->xml, node);

	node = FUNC0(ctx->xml, min_backhaul, "ULBandwidth");
	if (node)
		ul = FUNC4(ctx->xml, node);

	if (dl == NULL && ul == NULL) {
		FUNC3(MSG_INFO, "Ignore MinBackhaulThreshold without either DLBandwidth or ULBandwidth nodes");
		return;
	}

	if (dl)
		FUNC3(MSG_INFO, "- Policy/MinBackhaulThreshold/<X+>/DLBandwidth = %s",
			   dl);
	if (ul)
		FUNC3(MSG_INFO, "- Policy/MinBackhaulThreshold/<X+>/ULBandwidth = %s",
			   ul);

	if (home) {
		if (dl &&
		    FUNC2(ctx->ifname, id, "min_dl_bandwidth_home", dl) < 0)
			FUNC3(MSG_INFO, "Failed to set cred bandwidth limit");
		if (ul &&
		    FUNC2(ctx->ifname, id, "min_ul_bandwidth_home", ul) < 0)
			FUNC3(MSG_INFO, "Failed to set cred bandwidth limit");
	} else {
		if (dl &&
		    FUNC2(ctx->ifname, id, "min_dl_bandwidth_roaming", dl) <
		    0)
			FUNC3(MSG_INFO, "Failed to set cred bandwidth limit");
		if (ul &&
		    FUNC2(ctx->ifname, id, "min_ul_bandwidth_roaming", ul) <
		    0)
			FUNC3(MSG_INFO, "Failed to set cred bandwidth limit");
	}

	FUNC5(ctx->xml, dl);
	FUNC5(ctx->xml, ul);
}