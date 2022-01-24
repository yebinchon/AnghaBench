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
struct hs20_osu_client {char const* devid; int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static xml_node_t * FUNC6(struct hs20_osu_client *ctx,
				     const char *url, int msgid)
{
	xml_node_t *syncml, *synchdr;
	xml_namespace_t *ns;

	if (!ctx->devid) {
		FUNC2(MSG_ERROR,
			   "DevId from devinfo.xml is not available - cannot use OMA DM");
		return NULL;
	}

	syncml = FUNC4(ctx->xml, "SYNCML:SYNCML1.2", NULL, &ns,
				      "SyncML");

	synchdr = FUNC3(ctx->xml, syncml, NULL, "SyncHdr");
	FUNC5(ctx->xml, synchdr, NULL, "VerDTD", "1.2");
	FUNC5(ctx->xml, synchdr, NULL, "VerProto", "DM/1.2");
	FUNC5(ctx->xml, synchdr, NULL, "SessionID", "1");
	FUNC5(ctx->xml, synchdr, NULL, "MsgID", FUNC0(msgid));

	FUNC1(ctx, synchdr, "Target", url);
	FUNC1(ctx, synchdr, "Source", ctx->devid);

	return syncml;
}