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
 int /*<<< orphan*/ * FUNC0 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xml_node_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static int FUNC2(struct xml_node_ctx *ctx, xml_node_t *parent,
		       const char *urn)
{
	xml_node_t *node;

	node = FUNC0(ctx, parent, NULL, "RTProperties");
	if (node == NULL)
		return -1;
	node = FUNC0(ctx, node, NULL, "Type");
	if (node == NULL)
		return -1;
	FUNC1(ctx, node, NULL, "DDFName", urn);
	return 0;
}