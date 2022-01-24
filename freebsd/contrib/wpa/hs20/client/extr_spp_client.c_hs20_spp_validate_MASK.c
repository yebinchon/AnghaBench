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
struct xml_node_ctx {int dummy; } ;
struct hs20_osu_client {struct xml_node_ctx* xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  spp_xsd_fname ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct hs20_osu_client*,char*,...) ; 
 char* FUNC4 (struct xml_node_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xml_node_ctx*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int FUNC7(struct hs20_osu_client *ctx, xml_node_t *node,
			     const char *expected_name)
{
	struct xml_node_ctx *xctx = ctx->xml;
	const char *name;
	char *err;
	int ret;

	if (!FUNC5(xctx, node))
		return -1;

	name = FUNC4(xctx, node);
	if (name == NULL)
		return -1;

	if (FUNC1(expected_name, name) != 0) {
		FUNC2(MSG_INFO, "Unexpected SOAP method name '%s' (expected '%s')",
			   name, expected_name);
		FUNC3(ctx, "Unexpected SOAP method name '%s' (expected '%s')",
			      name, expected_name);
		return -1;
	}

	ret = FUNC6(xctx, node, spp_xsd_fname, &err);
	if (ret < 0) {
		FUNC2(MSG_INFO, "XML schema validation error(s)\n%s", err);
		FUNC3(ctx, "SPP XML schema validation failed");
		FUNC0(err);
	}
	return ret;
}