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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  DM_GENERIC_ALERT ; 
 int /*<<< orphan*/  DM_URI_PPS ; 
 int /*<<< orphan*/ * FUNC0 (struct hs20_osu_client*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*) ; 

__attribute__((used)) static void FUNC6(struct hs20_osu_client *ctx,
					  xml_node_t *syncbody,
					  int cmdid, const char *oper,
					  const char *data)
{
	xml_node_t *node, *item;
	char buf[200];

	node = FUNC0(ctx, syncbody, cmdid, DM_GENERIC_ALERT);

	item = FUNC3(ctx->xml, node, NULL, "Item");
	FUNC1(ctx, item, "Source", DM_URI_PPS);
	node = FUNC3(ctx->xml, item, NULL, "Meta");
	FUNC2(buf, sizeof(buf), "Reversed-Domain-Name: %s", oper);
	FUNC5(ctx->xml, node, "syncml:metinf", "Type", buf);
	FUNC5(ctx->xml, node, "syncml:metinf", "Format",
				"xml");
	FUNC4(ctx->xml, item, NULL, "Data", data);
}