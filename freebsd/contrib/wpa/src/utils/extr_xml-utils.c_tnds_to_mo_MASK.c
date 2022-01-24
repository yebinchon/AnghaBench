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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct xml_node_ctx*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct xml_node_ctx*,int /*<<< orphan*/ *) ; 

xml_node_t * FUNC4(struct xml_node_ctx *ctx, xml_node_t *tnds)
{
	const char *name;
	xml_node_t *node;

	name = FUNC3(ctx, tnds);
	if (name == NULL || FUNC1(name, "MgmtTree") != 0)
		return NULL;

	node = FUNC0(ctx, tnds, "Node");
	if (!node)
		return NULL;
	return FUNC2(ctx, NULL, node, NULL);
}