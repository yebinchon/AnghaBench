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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static xml_node_t * FUNC4(struct hs20_osu_client *ctx, xml_node_t *parent,
			      int cmdid, int data)
{
	xml_node_t *node;

	node = FUNC2(ctx->xml, parent, NULL, "Alert");
	if (node == NULL)
		return NULL;
	FUNC1(ctx, node, cmdid);
	FUNC3(ctx->xml, node, NULL, "Data", FUNC0(data));

	return node;
}