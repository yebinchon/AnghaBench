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
 int /*<<< orphan*/  FUNC0 (struct xml_node_ctx*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct xml_node_ctx*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct xml_node_ctx*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (struct xml_node_ctx*,int /*<<< orphan*/ *) ; 

xml_node_t * FUNC7(struct xml_node_ctx *ctx, xml_node_t *mo,
			int use_path, const char *urn, const char *ns_uri)
{
	xml_node_t *root;
	xml_node_t *node;
	const char *name;

	root = FUNC3(ctx, ns_uri, NULL, NULL, "MgmtTree");
	if (root == NULL)
		return NULL;

	FUNC4(ctx, root, NULL, "VerDTD", "1.2");

	name = FUNC6(ctx, mo);

	node = FUNC2(ctx, root, NULL, "Node");
	if (node == NULL)
		goto fail;
	FUNC4(ctx, node, NULL, "NodeName", name);
	if (urn)
		FUNC0(ctx, node, urn);

	FUNC1(ctx, use_path ? root : node, mo, use_path ? name : NULL);

	return root;

fail:
	FUNC5(ctx, root);
	return NULL;
}