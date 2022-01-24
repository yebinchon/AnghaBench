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
struct hs20_osu_client {scalar_t__ pps_cred_set; int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (struct hs20_osu_client*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct hs20_osu_client*,char const*,int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct hs20_osu_client *ctx, const char *url)
{
	xml_node_t *syncml, *resp;
	char *resp_uri = NULL;
	int msgid = 0;

	if (url == NULL) {
		FUNC4(MSG_INFO, "Invalid prov command (missing URL)");
		return -1;
	}

	FUNC4(MSG_INFO, "OMA-DM credential provisioning requested");
	FUNC5(ctx, "OMA-DM credential provisioning");

	msgid++;
	syncml = FUNC0(ctx, url, msgid);
	if (syncml == NULL)
		return -1;

	while (syncml) {
		resp = FUNC2(ctx, resp_uri ? resp_uri : url,
					syncml, NULL, NULL, NULL, NULL, NULL);
		if (resp == NULL)
			return -1;

		msgid++;
		syncml = FUNC1(ctx, url, resp, msgid, &resp_uri,
					NULL, NULL);
		FUNC6(ctx->xml, resp);
	}

	FUNC3(resp_uri);

	return ctx->pps_cred_set ? 0 : -1;
}