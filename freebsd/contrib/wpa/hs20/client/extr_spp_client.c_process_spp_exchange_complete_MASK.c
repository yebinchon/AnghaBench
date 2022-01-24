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
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct hs20_osu_client*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct hs20_osu_client *ctx,
					 xml_node_t *node)
{
	char *status, *session_id;

	FUNC0(ctx, "sppExchangeComplete", node);

	status = FUNC1(ctx->xml, node, "sppStatus");
	if (status == NULL) {
		FUNC3(MSG_INFO, "No sppStatus attribute");
		return -1;
	}
	FUNC4(ctx, "Received sppExchangeComplete sppStatus='%s'",
		      status);

	session_id = FUNC1(ctx->xml, node, "sessionID");
	if (session_id == NULL) {
		FUNC3(MSG_INFO, "No sessionID attribute");
		FUNC5(ctx->xml, status);
		return -1;
	}

	FUNC3(MSG_INFO, "[hs20] sppStatus: '%s'  sessionID: '%s'",
		   status, session_id);
	FUNC5(ctx->xml, session_id);

	if (FUNC2(status, "Exchange complete, release TLS connection") ==
	    0) {
		FUNC5(ctx->xml, status);
		return 0;
	}

	FUNC3(MSG_INFO, "Unexpected sppStatus '%s'", status);
	FUNC4(ctx, "Unexpected sppStatus '%s'", status);
	FUNC5(ctx->xml, status);
	return -1;
}