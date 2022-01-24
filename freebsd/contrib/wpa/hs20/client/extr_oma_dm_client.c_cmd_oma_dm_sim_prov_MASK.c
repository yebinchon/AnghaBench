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
struct hs20_osu_client {int no_reconnect; scalar_t__ pps_cred_set; int /*<<< orphan*/  ifname; int /*<<< orphan*/  pps_fname; int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (struct hs20_osu_client*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct hs20_osu_client*,char const*,int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct hs20_osu_client *ctx, const char *url)
{
	xml_node_t *syncml, *resp;
	char *resp_uri = NULL;
	int msgid = 0;

	if (url == NULL) {
		FUNC7(MSG_INFO, "Invalid prov command (missing URL)");
		return -1;
	}

	FUNC7(MSG_INFO, "OMA-DM SIM provisioning requested");
	ctx->no_reconnect = 2;

	FUNC7(MSG_INFO, "Wait for IP address before starting SIM provisioning");
	FUNC8(ctx, "Wait for IP address before starting SIM provisioning");

	if (FUNC5(ctx->ifname, 15) < 0) {
		FUNC7(MSG_INFO, "Could not get IP address for WLAN - try connection anyway");
	}
	FUNC8(ctx, "OMA-DM SIM provisioning");

	msgid++;
	syncml = FUNC0(ctx, url, msgid);
	if (syncml == NULL)
		return -1;

	while (syncml) {
		resp = FUNC3(ctx, resp_uri ? resp_uri : url,
					syncml, NULL, NULL, NULL, NULL, NULL);
		if (resp == NULL)
			return -1;

		msgid++;
		syncml = FUNC2(ctx, url, resp, msgid, &resp_uri,
					NULL, NULL);
		FUNC9(ctx->xml, resp);
	}

	FUNC4(resp_uri);

	if (ctx->pps_cred_set) {
		FUNC7(MSG_INFO, "Updating wpa_supplicant credentials");
		FUNC1(ctx, ctx->pps_fname);

		FUNC7(MSG_INFO, "Requesting reconnection with updated configuration");
		FUNC8(ctx, "Requesting reconnection with updated configuration");
		if (FUNC6(ctx->ifname, "INTERWORKING_SELECT auto") < 0) {
			FUNC7(MSG_INFO, "Failed to request wpa_supplicant to reconnect");
			FUNC8(ctx, "Failed to request wpa_supplicant to reconnect");
			return -1;
		}
	}

	return ctx->pps_cred_set ? 0 : -1;
}