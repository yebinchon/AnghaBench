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
struct hs20_osu_client {char const* fqdn; int pps_updated; int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int DM_RESP_ALREADY_EXISTS ; 
 int DM_RESP_BAD_REQUEST ; 
 int DM_RESP_COMMAND_FAILED ; 
 int DM_RESP_OK ; 
 int DM_RESP_PERMISSION_DENIED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 size_t FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct hs20_osu_client*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC19(struct hs20_osu_client *ctx, const char *locuri,
			  xml_node_t *add, xml_node_t *pps,
			  const char *pps_fname)
{
	const char *pos;
	size_t fqdn_len;
	xml_node_t *node, *tnds, *unode, *pps_node;
	char *data, *uri, *upos, *end;
	int use_tnds = 0;
	size_t uri_len;

	FUNC12(MSG_INFO, "Add command target LocURI: %s", locuri);

	if (FUNC7(locuri, "./Wi-Fi/", 8) != 0) {
		FUNC12(MSG_INFO, "Do not allow Add outside ./Wi-Fi");
		return DM_RESP_PERMISSION_DENIED;
	}
	pos = locuri + 8;

	if (ctx->fqdn == NULL)
		return DM_RESP_COMMAND_FAILED;
	fqdn_len = FUNC6(ctx->fqdn);
	if (FUNC7(pos, ctx->fqdn, fqdn_len) != 0 ||
	    pos[fqdn_len] != '/') {
		FUNC12(MSG_INFO, "Do not allow Add outside ./Wi-Fi/%s",
			   ctx->fqdn);
		return DM_RESP_PERMISSION_DENIED;
	}
	pos += fqdn_len + 1;

	if (FUNC7(pos, "PerProviderSubscription/", 24) != 0) {
		FUNC12(MSG_INFO,
			   "Do not allow Add outside ./Wi-Fi/%s/PerProviderSubscription",
			   ctx->fqdn);
		return DM_RESP_PERMISSION_DENIED;
	}
	pos += 24;

	FUNC12(MSG_INFO, "Add command for PPS node %s", pos);

	pps_node = FUNC1(ctx->xml, pps, pos);
	if (pps_node) {
		FUNC12(MSG_INFO, "Specified PPS node exists already");
		return DM_RESP_ALREADY_EXISTS;
	}

	uri = FUNC4(pos);
	if (uri == NULL)
		return DM_RESP_COMMAND_FAILED;
	while (!pps_node) {
		upos = FUNC8(uri, '/');
		if (!upos)
			break;
		upos[0] = '\0';
		pps_node = FUNC1(ctx->xml, pps, uri);
		FUNC12(MSG_INFO, "Node %s %s", uri,
			   pps_node ? "exists" : "does not exist");
	}

	FUNC12(MSG_INFO, "Parent URI: %s", uri);

	if (!pps_node) {
		/* Add at root of PPS MO */
		pps_node = pps;
	}

	uri_len = FUNC6(uri);
	FUNC5(uri, pos + uri_len, FUNC6(pos));
	upos = uri;
	while (*upos == '/')
		upos++;
	FUNC12(MSG_INFO, "Nodes to add: %s", upos);

	for (;;) {
		end = FUNC3(upos, '/');
		if (!end)
			break;
		*end = '\0';
		FUNC12(MSG_INFO, "Adding interim node %s", upos);
		pps_node = FUNC14(ctx->xml, pps_node, NULL, upos);
		if (pps_node == NULL) {
			FUNC2(uri);
			return DM_RESP_COMMAND_FAILED;
		}
		upos = end + 1;
	}

	FUNC12(MSG_INFO, "Adding node %s", upos);

	node = FUNC1(ctx->xml, add, "Item/Meta/Type");
	if (node) {
		char *type;
		type = FUNC17(ctx->xml, node);
		if (type == NULL) {
			FUNC12(MSG_ERROR, "Could not find type text");
			FUNC2(uri);
			return DM_RESP_BAD_REQUEST;
		}
		use_tnds = node &&
			FUNC9(type, "application/vnd.syncml.dmtnds+xml");
	}

	node = FUNC1(ctx->xml, add, "Item/Data");
	if (node == NULL) {
		FUNC12(MSG_INFO, "No Add/Item/Data found");
		FUNC2(uri);
		return DM_RESP_BAD_REQUEST;
	}

	data = FUNC17(ctx->xml, node);
	if (data == NULL) {
		FUNC12(MSG_INFO, "Could not get Add/Item/Data text");
		FUNC2(uri);
		return DM_RESP_BAD_REQUEST;
	}

	FUNC12(MSG_DEBUG, "Add/Item/Data: %s", data);

	if (use_tnds) {
		tnds = FUNC16(ctx->xml, data);
		FUNC18(ctx->xml, data);
		if (tnds == NULL) {
			FUNC12(MSG_INFO,
				   "Could not parse Add/Item/Data text");
			FUNC2(uri);
			return DM_RESP_BAD_REQUEST;
		}

		unode = FUNC10(ctx->xml, tnds);
		FUNC15(ctx->xml, tnds);
		if (unode == NULL) {
			FUNC12(MSG_INFO, "Could not parse TNDS text");
			FUNC2(uri);
			return DM_RESP_BAD_REQUEST;
		}

		FUNC0(ctx, "Parsed TNDS", unode);

		FUNC13(ctx->xml, pps_node, unode);
	} else {
		/* TODO: What to do here? */
		FUNC2(uri);
		return DM_RESP_BAD_REQUEST;
	}

	FUNC2(uri);

	if (FUNC11(ctx, pps_fname, pps) < 0)
		return DM_RESP_COMMAND_FAILED;

	ctx->pps_updated = 1;

	return DM_RESP_OK;
}