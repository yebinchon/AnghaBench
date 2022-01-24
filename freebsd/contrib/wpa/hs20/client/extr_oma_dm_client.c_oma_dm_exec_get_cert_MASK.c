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
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int FUNC3 (struct hs20_osu_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(struct hs20_osu_client *ctx, xml_node_t *exec)
{
	xml_node_t *node, *getcert;
	char *data;
	const char *name;
	int res;

	FUNC4(MSG_INFO, "Client certificate enrollment");
	FUNC5(ctx, "Client certificate enrollment");

	node = FUNC1(ctx->xml, exec, "Item/Data");
	if (node == NULL) {
		FUNC4(MSG_INFO, "No Data node found");
		return DM_RESP_BAD_REQUEST;
	}

	data = FUNC9(ctx->xml, node);
	if (data == NULL) {
		FUNC4(MSG_INFO, "Invalid data");
		return DM_RESP_BAD_REQUEST;
	}
	FUNC4(MSG_INFO, "Data: %s", data);
	getcert = FUNC7(ctx->xml, data);
	FUNC10(ctx->xml, data);

	if (getcert == NULL) {
		FUNC4(MSG_INFO, "Could not parse Item/Data node contents");
		return DM_RESP_BAD_REQUEST;
	}

	FUNC0(ctx, "OMA-DM getCertificate", getcert);

	name = FUNC8(ctx->xml, getcert);
	if (name == NULL || FUNC2(name, "getCertificate") != 0) {
		FUNC4(MSG_INFO, "Unexpected getCertificate node name '%s'",
			   name);
		return DM_RESP_BAD_REQUEST;
	}

	res = FUNC3(ctx, getcert);

	FUNC6(ctx->xml, getcert);

	return res == 0 ? DM_RESP_OK : DM_RESP_COMMAND_FAILED;
}