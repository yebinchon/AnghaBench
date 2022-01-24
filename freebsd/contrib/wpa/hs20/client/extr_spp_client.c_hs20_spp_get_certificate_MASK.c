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
typedef  int /*<<< orphan*/  xml_namespace_t ;
struct hs20_osu_client {int /*<<< orphan*/  xml; int /*<<< orphan*/  http; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (struct hs20_osu_client*,int /*<<< orphan*/ **,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct hs20_osu_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static xml_node_t * FUNC7(struct hs20_osu_client *ctx,
					     xml_node_t *cmd,
					     const char *session_id,
					     const char *pps_fname)
{
	xml_namespace_t *ns;
	xml_node_t *node, *ret_node;
	int res;

	FUNC5(MSG_INFO, "Client certificate enrollment");

	res = FUNC3(ctx, cmd);
	if (res < 0)
		FUNC5(MSG_INFO, "EST simpleEnroll failed");

	node = FUNC0(ctx, &ns, session_id,
				       res == 0 ?
				       "Certificate enrollment completed" :
				       "Certificate enrollment failed");
	if (node == NULL)
		return NULL;

	ret_node = FUNC4(ctx->http, node);
	if (ret_node == NULL)
		return NULL;

	FUNC1(ctx, "Received response to certificate enrollment "
			"completed", ret_node);

	if (FUNC2(ctx, ret_node, "sppPostDevDataResponse") < 0) {
		FUNC5(MSG_INFO, "SPP validation failed");
		FUNC6(ctx->xml, ret_node);
		return NULL;
	}

	return ret_node;
}