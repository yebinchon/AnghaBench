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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct hs20_osu_client *ctx, xml_node_t *node)
{
	xml_node_t *cnode;
	char *str;
	int ret;

	cnode = FUNC1(ctx->xml, node, "CmdID");
	if (cnode == NULL)
		return 0;

	str = FUNC2(ctx->xml, cnode);
	if (str == NULL)
		return 0;
	ret = FUNC0(str);
	FUNC3(ctx->xml, str);
	return ret;
}