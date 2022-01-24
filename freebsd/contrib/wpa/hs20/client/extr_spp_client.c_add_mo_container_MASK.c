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
struct xml_node_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC0 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct xml_node_ctx*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct xml_node_ctx*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (struct xml_node_ctx*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct xml_node_ctx *ctx, xml_namespace_t *ns,
			     xml_node_t *parent, const char *urn,
			     const char *fname)
{
	xml_node_t *node;
	xml_node_t *fnode, *tnds;
	char *str;

	errno = 0;
	fnode = FUNC1(ctx, fname);
	if (!fnode) {
		FUNC4(MSG_ERROR,
			   "Failed to create XML node from file: %s, possible error: %s",
			   fname, FUNC3(errno));
		return;
	}
	tnds = FUNC0(ctx, fnode, 0, urn, "syncml:dmddf1.2");
	FUNC7(ctx, fnode);
	if (!tnds)
		return;

	str = FUNC8(ctx, tnds);
	FUNC7(ctx, tnds);
	if (str == NULL)
		return;

	node = FUNC6(ctx, parent, ns, "moContainer", str);
	if (node)
		FUNC5(ctx, node, ns, "moURN", urn);
	FUNC2(str);
}