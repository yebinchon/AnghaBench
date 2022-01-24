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
struct hs20_osu_client {int no_reconnect; int pps_cred_set; int /*<<< orphan*/  ifname; int /*<<< orphan*/  pps_fname; int /*<<< orphan*/  xml; } ;
typedef  int /*<<< orphan*/  fname ;

/* Variables and functions */
 int DM_RESP_ALREADY_EXISTS ; 
 int DM_RESP_BAD_REQUEST ; 
 int DM_RESP_COMMAND_FAILED ; 
 int DM_RESP_OK ; 
 int DM_RESP_PERMISSION_DENIED ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC12(struct hs20_osu_client *ctx, xml_node_t *add,
		      xml_node_t *pps, const char *pps_fname)
{
	xml_node_t *node;
	char *locuri;
	char fname[300];
	int ret;

	node = FUNC1(ctx->xml, add, "Item/Target/LocURI");
	if (node == NULL) {
		FUNC9(MSG_INFO, "No Target LocURI node found");
		return DM_RESP_BAD_REQUEST;
	}
	locuri = FUNC10(ctx->xml, node);
	if (locuri == NULL) {
		FUNC9(MSG_ERROR, "No LocURI node text found");
		return DM_RESP_BAD_REQUEST;
	}
	FUNC9(MSG_INFO, "Target LocURI: %s", locuri);
	if (FUNC7(locuri, "./Wi-Fi/", 8) != 0) {
		FUNC9(MSG_INFO, "Unsupported Add Target LocURI");
		FUNC11(ctx->xml, locuri);
		return DM_RESP_PERMISSION_DENIED;
	}

	node = FUNC1(ctx->xml, add, "Item/Data");
	if (node == NULL) {
		FUNC9(MSG_INFO, "No Data node found");
		FUNC11(ctx->xml, locuri);
		return DM_RESP_BAD_REQUEST;
	}

	if (pps_fname && FUNC4(pps_fname)) {
		ret = FUNC3(ctx, locuri, add, pps, pps_fname);
		if (ret != DM_RESP_OK) {
			FUNC11(ctx->xml, locuri);
			return ret;
		}
		ret = 0;
		FUNC6(fname, pps_fname, sizeof(fname));
	} else
		ret = FUNC2(ctx, locuri, node, fname, sizeof(fname));
	FUNC11(ctx->xml, locuri);
	if (ret < 0)
		return ret == -2 ? DM_RESP_ALREADY_EXISTS :
			DM_RESP_COMMAND_FAILED;

	if (ctx->no_reconnect == 2) {
		FUNC5(ctx->pps_fname, sizeof(ctx->pps_fname), "%s",
			    fname);
		ctx->pps_cred_set = 1;
		return DM_RESP_OK;
	}

	FUNC9(MSG_INFO, "Updating wpa_supplicant credentials");
	FUNC0(ctx, fname);

	if (ctx->no_reconnect)
		return DM_RESP_OK;

	FUNC9(MSG_INFO, "Requesting reconnection with updated configuration");
	if (FUNC8(ctx->ifname, "INTERWORKING_SELECT auto") < 0)
		FUNC9(MSG_INFO, "Failed to request wpa_supplicant to reconnect");

	return DM_RESP_OK;
}