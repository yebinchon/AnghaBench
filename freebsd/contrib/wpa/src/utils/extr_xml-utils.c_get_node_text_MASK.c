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
 int /*<<< orphan*/ * FUNC0 (struct xml_node_ctx*,int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (struct xml_node_ctx*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char * FUNC2(struct xml_node_ctx *ctx, xml_node_t *node,
			    const char *node_name)
{
	node = FUNC0(ctx, node, node_name);
	if (node == NULL)
		return NULL;
	return FUNC1(ctx, node);
}