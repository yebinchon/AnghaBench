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
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char * FUNC5(struct hs20_osu_client *ctx, const char *urn,
		     const char *fname)
{
	xml_node_t *fnode, *tnds;
	char *str;

	fnode = FUNC1(ctx->xml, fname);
	if (!fnode)
		return NULL;
	tnds = FUNC0(ctx->xml, fnode, 0, urn, "syncml:dmddf1.2");
	FUNC3(ctx->xml, fnode);
	if (!tnds)
		return NULL;

	str = FUNC4(ctx->xml, tnds);
	FUNC3(ctx->xml, tnds);
	if (str == NULL)
		return NULL;
	FUNC2(MSG_INFO, "MgmtTree: %s", str);

	return str;
}