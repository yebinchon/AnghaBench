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
struct hs20_osu_client {char* fqdn; int pps_updated; int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int DM_RESP_BAD_REQUEST ; 
 int DM_RESP_COMMAND_FAILED ; 
 int DM_RESP_NOT_FOUND ; 
 int DM_RESP_OK ; 
 int DM_RESP_PERMISSION_DENIED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (struct hs20_osu_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct hs20_osu_client*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC18(struct hs20_osu_client *ctx, xml_node_t *replace,
			  xml_node_t *pps, const char *pps_fname)
{
	char *locuri, *pos;
	size_t fqdn_len;
	xml_node_t *node, *tnds, *unode, *pps_node, *parent;
	char *data;
	int use_tnds = 0;

	locuri = FUNC2(ctx, replace);
	if (locuri == NULL)
		return DM_RESP_BAD_REQUEST;

	FUNC9(MSG_INFO, "Replace command target LocURI: %s", locuri);
	if (FUNC5(locuri, "./Wi-Fi/", 8) != 0) {
		FUNC9(MSG_INFO, "Do not allow Replace outside ./Wi-Fi");
		FUNC3(locuri);
		return DM_RESP_PERMISSION_DENIED;
	}
	pos = locuri + 8;

	if (ctx->fqdn == NULL) {
		FUNC3(locuri);
		return DM_RESP_COMMAND_FAILED;
	}
	fqdn_len = FUNC4(ctx->fqdn);
	if (FUNC5(pos, ctx->fqdn, fqdn_len) != 0 ||
	    pos[fqdn_len] != '/') {
		FUNC9(MSG_INFO, "Do not allow Replace outside ./Wi-Fi/%s",
			   ctx->fqdn);
		FUNC3(locuri);
		return DM_RESP_PERMISSION_DENIED;
	}
	pos += fqdn_len + 1;

	if (FUNC5(pos, "PerProviderSubscription/", 24) != 0) {
		FUNC9(MSG_INFO,
			   "Do not allow Replace outside ./Wi-Fi/%s/PerProviderSubscription",
			   ctx->fqdn);
		FUNC3(locuri);
		return DM_RESP_PERMISSION_DENIED;
	}
	pos += 24;

	FUNC9(MSG_INFO, "Replace command for PPS node %s", pos);

	pps_node = FUNC1(ctx->xml, pps, pos);
	if (pps_node == NULL) {
		FUNC9(MSG_INFO, "Specified PPS node not found");
		FUNC3(locuri);
		return DM_RESP_NOT_FOUND;
	}

	node = FUNC1(ctx->xml, replace, "Item/Meta/Type");
	if (node) {
		char *type;
		type = FUNC15(ctx->xml, node);
		if (type == NULL) {
			FUNC9(MSG_INFO, "Could not find type text");
			FUNC3(locuri);
			return DM_RESP_BAD_REQUEST;
		}
		use_tnds = node &&
			FUNC6(type, "application/vnd.syncml.dmtnds+xml");
	}

	node = FUNC1(ctx->xml, replace, "Item/Data");
	if (node == NULL) {
		FUNC9(MSG_INFO, "No Replace/Item/Data found");
		FUNC3(locuri);
		return DM_RESP_BAD_REQUEST;
	}

	data = FUNC15(ctx->xml, node);
	if (data == NULL) {
		FUNC9(MSG_INFO, "Could not get Replace/Item/Data text");
		FUNC3(locuri);
		return DM_RESP_BAD_REQUEST;
	}

	FUNC9(MSG_DEBUG, "Replace/Item/Data: %s", data);

	if (use_tnds) {
		tnds = FUNC13(ctx->xml, data);
		FUNC16(ctx->xml, data);
		if (tnds == NULL) {
			FUNC9(MSG_INFO,
				   "Could not parse Replace/Item/Data text");
			FUNC3(locuri);
			return DM_RESP_BAD_REQUEST;
		}

		unode = FUNC7(ctx->xml, tnds);
		FUNC12(ctx->xml, tnds);
		if (unode == NULL) {
			FUNC9(MSG_INFO, "Could not parse TNDS text");
			FUNC3(locuri);
			return DM_RESP_BAD_REQUEST;
		}

		FUNC0(ctx, "Parsed TNDS", unode);

		parent = FUNC14(ctx->xml, pps_node);
		FUNC11(ctx->xml, pps_node);
		FUNC10(ctx->xml, parent, unode);
	} else {
		FUNC17(ctx->xml, pps_node, data);
		FUNC16(ctx->xml, data);
	}

	FUNC3(locuri);

	if (FUNC8(ctx, pps_fname, pps) < 0)
		return DM_RESP_COMMAND_FAILED;

	ctx->pps_updated = 1;

	return DM_RESP_OK;
}