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
typedef  int /*<<< orphan*/ * xmlNsPtr ;
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct xml_node_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

xml_node_t * FUNC3(struct xml_node_ctx *ctx, const char *ns_uri,
				  const char *ns_prefix,
				  xml_namespace_t **ret_ns, const char *name)
{
	xmlNodePtr node;
	xmlNsPtr ns = NULL;

	node = FUNC0(NULL, (const xmlChar *) name);
	if (node == NULL)
		return NULL;
	if (ns_uri) {
		ns = FUNC1(node, (const xmlChar *) ns_uri,
			      (const xmlChar *) ns_prefix);
		FUNC2(node, ns);
	}

	if (ret_ns)
		*ret_ns = (xml_namespace_t *) ns;

	return (xml_node_t *) node;
}