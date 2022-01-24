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
 int DM_RESP_BAD_REQUEST ; 
 int DM_RESP_COMMAND_FAILED ; 
 int DM_RESP_OK ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct hs20_osu_client*,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct hs20_osu_client *ctx, xml_node_t *exec)
{
	xml_node_t *node;
	char *data;
	int res;

	node = FUNC0(ctx->xml, exec, "Item/Data");
	if (node == NULL) {
		FUNC2(MSG_INFO, "No Data node found");
		return DM_RESP_BAD_REQUEST;
	}

	data = FUNC4(ctx->xml, node);
	if (data == NULL) {
		FUNC2(MSG_INFO, "Invalid data");
		return DM_RESP_BAD_REQUEST;
	}
	FUNC2(MSG_INFO, "Data: %s", data);
	FUNC2(MSG_INFO, "Launch browser to URI '%s'", data);
	FUNC3(ctx, "Launch browser to URI '%s'", data);
	res = FUNC1(data);
	FUNC5(ctx->xml, data);
	if (res > 0) {
		FUNC2(MSG_INFO, "User response in browser completed successfully");
		FUNC3(ctx, "User response in browser completed successfully");
		return DM_RESP_OK;
	} else {
		FUNC2(MSG_INFO, "Failed to receive user response");
		FUNC3(ctx, "Failed to receive user response");
		return DM_RESP_COMMAND_FAILED;
	}
}