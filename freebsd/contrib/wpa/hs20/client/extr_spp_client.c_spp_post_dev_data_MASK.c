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
struct hs20_osu_client {int /*<<< orphan*/  xml; int /*<<< orphan*/  http; } ;
typedef  enum spp_post_dev_data_use { ____Placeholder_spp_post_dev_data_use } spp_post_dev_data_use ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (struct hs20_osu_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hs20_osu_client*,int,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct hs20_osu_client*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct hs20_osu_client *ctx,
			     enum spp_post_dev_data_use use,
			     const char *reason,
			     const char *pps_fname, xml_node_t *pps)
{
	xml_node_t *payload;
	xml_node_t *ret_node;

	payload = FUNC0(ctx, NULL, NULL, reason);
	if (payload == NULL)
		return -1;

	ret_node = FUNC4(ctx->http, payload);
	if (!ret_node) {
		const char *err = FUNC2(ctx->http);
		if (err) {
			FUNC5(MSG_INFO, "HTTP error: %s", err);
			FUNC6(ctx, "HTTP error: %s", err);
		} else {
			FUNC7(ctx, "Failed to send SOAP message");
		}
		return -1;
	}

	if (FUNC1(ctx, ret_node, "sppPostDevDataResponse") < 0) {
		FUNC5(MSG_INFO, "SPP validation failed");
		FUNC8(ctx->xml, ret_node);
		return -1;
	}

	FUNC3(ctx, use, ret_node,
					   pps_fname, pps);
	return 0;
}