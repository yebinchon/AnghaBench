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
 int /*<<< orphan*/ * FUNC0 (struct hs20_osu_client*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct hs20_osu_client*,char const*,int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct hs20_osu_client *ctx, const char *address,
		    const char *pps_fname,
		    const char *client_cert, const char *client_key,
		    const char *cred_username, const char *cred_password,
		    xml_node_t *pps)
{
	xml_node_t *syncml, *resp;
	char *resp_uri = NULL;
	int msgid = 0;

	FUNC6(MSG_INFO, "OMA-DM subscription remediation");
	FUNC7(ctx, "OMA-DM subscription remediation");

	msgid++;
	syncml = FUNC0(ctx, address, msgid);
	if (syncml == NULL)
		return;

	while (syncml) {
		resp = FUNC3(ctx, resp_uri ? resp_uri : address,
					syncml, NULL, cred_username,
					cred_password, client_cert, client_key);
		if (resp == NULL)
			return;

		msgid++;
		syncml = FUNC2(ctx, address, resp, msgid, &resp_uri,
					pps, pps_fname);
		FUNC8(ctx->xml, resp);
	}

	FUNC4(resp_uri);

	FUNC6(MSG_INFO, "Update wpa_supplicant credential based on updated PPS MO and request reconnection");
	FUNC7(ctx, "Update wpa_supplicant credential based on updated PPS MO and request reconnection");
	FUNC1(ctx, pps_fname);
	if (FUNC5(ctx->ifname, "INTERWORKING_SELECT auto") < 0) {
		FUNC6(MSG_INFO, "Failed to request wpa_supplicant to reconnect");
		FUNC7(ctx, "Failed to request wpa_supplicant to reconnect");
	}
}