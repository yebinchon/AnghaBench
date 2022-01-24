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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char * FUNC4(struct hs20_osu_client *ctx,
				       xml_node_t *node)
{
	xml_node_t *locuri;
	char *uri, *ret = NULL;

	locuri = FUNC0(ctx->xml, node, "Item/Target/LocURI");
	if (locuri == NULL)
		return NULL;

	uri = FUNC2(ctx->xml, locuri);
	if (uri)
		ret = FUNC1(uri);
	FUNC3(ctx->xml, uri);
	return ret;
}