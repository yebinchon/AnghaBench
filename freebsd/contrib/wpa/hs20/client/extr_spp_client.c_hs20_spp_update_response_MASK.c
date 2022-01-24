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

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (struct hs20_osu_client*,char const*,char const*,char const*) ; 
 scalar_t__ FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct hs20_osu_client*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct hs20_osu_client*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hs20_osu_client *ctx,
				    const char *session_id,
				    const char *spp_status,
				    const char *error_code)
{
	xml_node_t *node, *ret_node;
	int ret;

	FUNC6(ctx, "Building sppUpdateResponse sppStatus='%s' error_code='%s'",
		      spp_status, error_code);
	node = FUNC0(ctx, session_id, spp_status,
					 error_code);
	if (node == NULL)
		return -1;
	ret_node = FUNC4(ctx->http, node);
	if (!ret_node) {
		if (FUNC3(ctx->http) < 0)
			return -1;
		FUNC5(MSG_INFO, "Try to finish with re-opened connection");
		node = FUNC0(ctx, session_id, spp_status,
						 error_code);
		if (node == NULL)
			return -1;
		ret_node = FUNC4(ctx->http, node);
		if (ret_node == NULL)
			return -1;
		FUNC5(MSG_INFO, "Continue with new connection");
	}

	if (FUNC1(ctx, ret_node, "sppExchangeComplete") < 0) {
		FUNC5(MSG_INFO, "SPP validation failed");
		FUNC7(ctx->xml, ret_node);
		return -1;
	}

	ret = FUNC2(ctx, ret_node);
	FUNC7(ctx->xml, ret_node);
	return ret;
}