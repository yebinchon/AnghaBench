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
 int /*<<< orphan*/  DM_CLIENT_INITIATED_MGMT ; 
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hs20_osu_client*,int /*<<< orphan*/ *,int,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct hs20_osu_client*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static xml_node_t * FUNC8(struct hs20_osu_client *ctx,
				   const char *url, int msgid, const char *oper)
{
	xml_node_t *syncml, *syncbody;
	char *str;
	int cmdid = 0;

	syncml = FUNC4(ctx, url, msgid);
	if (syncml == NULL)
		return NULL;

	syncbody = FUNC6(ctx->xml, syncml, NULL, "SyncBody");
	if (syncbody == NULL) {
		FUNC7(ctx->xml, syncml);
		return NULL;
	}

	cmdid++;
	FUNC0(ctx, syncbody, cmdid, DM_CLIENT_INITIATED_MGMT);

	str = FUNC2(ctx, NULL, "devdetail.xml");
	if (str == NULL) {
		FUNC7(ctx->xml, syncml);
		return NULL;
	}
	cmdid++;
	FUNC3(ctx, syncbody, cmdid, oper, str);
	FUNC5(str);

	cmdid++;
	FUNC1(ctx, syncbody, cmdid);

	FUNC6(ctx->xml, syncbody, NULL, "Final");

	return syncml;
}