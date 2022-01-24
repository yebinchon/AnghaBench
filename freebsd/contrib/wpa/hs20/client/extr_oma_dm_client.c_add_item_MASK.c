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
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*) ; 

__attribute__((used)) static void FUNC4(struct hs20_osu_client *ctx, xml_node_t *parent,
		     const char *locuri, const char *data)
{
	xml_node_t *item, *node;

	item = FUNC1(ctx->xml, parent, NULL, "Item");
	FUNC0(ctx, item, "Source", locuri);
	node = FUNC1(ctx->xml, item, NULL, "Meta");
	FUNC3(ctx->xml, node, "syncml:metinf", "Format",
				"Chr");
	FUNC3(ctx->xml, node, "syncml:metinf", "Type",
				"text/plain");
	FUNC2(ctx->xml, item, NULL, "Data", data);
}