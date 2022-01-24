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
typedef  scalar_t__ xmlNodePtr ;
typedef  int /*<<< orphan*/ * xmlDocPtr ;
struct xml_node_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ) ; 

xml_node_t * FUNC5(struct xml_node_ctx *ctx, const char *buf)
{
	xmlDocPtr doc;
	xmlNodePtr node;

	doc = FUNC4(buf, FUNC0(buf));
	if (doc == NULL)
		return NULL;
	node = FUNC2(doc);
	node = FUNC1(node, 1);
	FUNC3(doc);

	return (xml_node_t *) node;
}