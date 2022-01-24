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
struct hs20_osu_client {int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hs20_osu_client*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static xml_node_t * FUNC5(struct hs20_osu_client *ctx, xml_node_t *parent,
				int msgref, int cmdref, int cmdid,
				const char *locuri, const char *data)
{
	xml_node_t *node;

	node = FUNC3(ctx->xml, parent, NULL, "Results");
	if (node == NULL)
		return NULL;

	FUNC2(ctx, node, cmdid);
	FUNC4(ctx->xml, node, NULL, "MsgRef", FUNC1(msgref));
	FUNC4(ctx->xml, node, NULL, "CmdRef", FUNC1(cmdref));
	FUNC0(ctx, node, locuri, data);

	return node;
}