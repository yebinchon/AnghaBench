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
 char* FUNC0 (struct xml_node_ctx*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct xml_node_ctx*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct xml_node_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct xml_node_ctx*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xml_node_t * FUNC8(struct xml_node_ctx *ctx, xml_node_t *root,
				xml_node_t *node, const char *uri)
{
	char *nodename, *value, *path;
	xml_node_t *parent;

	nodename = FUNC0(ctx, node, "NodeName");
	if (nodename == NULL)
		return NULL;
	value = FUNC0(ctx, node, "Value");

	if (root == NULL) {
		root = FUNC4(ctx, NULL, NULL, NULL,
					    nodename);
		if (root && value)
			FUNC7(ctx, root, value);
	} else {
		if (uri == NULL) {
			FUNC6(ctx, nodename);
			FUNC6(ctx, value);
			return NULL;
		}
		path = FUNC0(ctx, node, "Path");
		if (path)
			uri = path;
		parent = FUNC1(ctx, root, uri);
		FUNC6(ctx, path);
		if (parent == NULL) {
			FUNC2("Could not find URI '%s'\n", uri);
			FUNC6(ctx, nodename);
			FUNC6(ctx, value);
			return NULL;
		}
		if (value)
			FUNC5(ctx, parent, NULL, nodename,
					     value);
		else
			FUNC3(ctx, parent, NULL, nodename);
	}

	FUNC6(ctx, nodename);
	FUNC6(ctx, value);

	return root;
}