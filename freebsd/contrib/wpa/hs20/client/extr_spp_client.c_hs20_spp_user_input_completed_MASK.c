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
 int /*<<< orphan*/ * FUNC0 (struct hs20_osu_client*,int /*<<< orphan*/ *,char const*,char*) ; 
 scalar_t__ FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static xml_node_t * FUNC6(struct hs20_osu_client *ctx,
						    const char *session_id)
{
	xml_node_t *node, *ret_node;

	node = FUNC0(ctx, NULL, session_id,
				       "User input completed");
	if (node == NULL)
		return NULL;

	ret_node = FUNC3(ctx->http, node);
	if (!ret_node) {
		if (FUNC2(ctx->http) < 0)
			return NULL;
		FUNC4(MSG_INFO, "Try to finish with re-opened connection");
		node = FUNC0(ctx, NULL, session_id,
					       "User input completed");
		if (node == NULL)
			return NULL;
		ret_node = FUNC3(ctx->http, node);
		if (ret_node == NULL)
			return NULL;
		FUNC4(MSG_INFO, "Continue with new connection");
	}

	if (FUNC1(ctx, ret_node, "sppPostDevDataResponse") < 0) {
		FUNC4(MSG_INFO, "SPP validation failed");
		FUNC5(ctx->xml, ret_node);
		return NULL;
	}

	return ret_node;
}