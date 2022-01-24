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
struct hs20_osu_client {int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPP_NS_URI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static xml_node_t * FUNC3(struct hs20_osu_client *ctx,
					      const char *session_id,
					      const char *spp_status,
					      const char *error_code)
{
	xml_namespace_t *ns;
	xml_node_t *spp_node, *node;

	spp_node = FUNC2(ctx->xml, SPP_NS_URI, "spp", &ns,
					"sppUpdateResponse");
	if (spp_node == NULL)
		return NULL;

	FUNC0(ctx->xml, spp_node, ns, "sppVersion", "1.0");
	FUNC0(ctx->xml, spp_node, ns, "sessionID", session_id);
	FUNC0(ctx->xml, spp_node, ns, "sppStatus", spp_status);

	if (error_code) {
		node = FUNC1(ctx->xml, spp_node, ns, "sppError");
		if (node)
			FUNC0(ctx->xml, node, NULL, "errorCode",
					  error_code);
	}

	return spp_node;
}