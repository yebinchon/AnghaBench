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
struct hs20_osu_client {char* fqdn; int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 size_t FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 void* FUNC7 (char*,char) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC20(struct hs20_osu_client *ctx, xml_node_t *pps,
			       xml_node_t *update)
{
	xml_node_t *node, *parent, *tnds, *unode;
	char *str;
	const char *name;
	char *uri, *pos;
	char *cdata, *cdata_end;
	size_t fqdn_len;

	FUNC11(MSG_INFO, "Processing updateNode");
	FUNC0(ctx, "updateNode", update);

	uri = FUNC4(ctx->xml, update, "managementTreeURI");
	if (uri == NULL) {
		FUNC11(MSG_INFO, "No managementTreeURI present");
		return -1;
	}
	FUNC11(MSG_INFO, "managementTreeUri: '%s'", uri);

	name = FUNC7(uri, '/');
	if (name == NULL) {
		FUNC11(MSG_INFO, "Unexpected URI");
		FUNC16(ctx->xml, uri);
		return -1;
	}
	name++;
	FUNC11(MSG_INFO, "Update interior node: '%s'", name);

	str = FUNC18(ctx->xml, update);
	if (str == NULL) {
		FUNC11(MSG_INFO, "Could not extract MO text");
		FUNC16(ctx->xml, uri);
		return -1;
	}
	FUNC11(MSG_DEBUG, "[hs20] nodeContainer text: '%s'", str);
	cdata = FUNC9(str, "<![CDATA[");
	cdata_end = FUNC9(str, "]]>");
	if (cdata && cdata_end && cdata_end > cdata &&
	    cdata < FUNC9(str, "MgmtTree") &&
	    cdata_end > FUNC9(str, "/MgmtTree")) {
		char *tmp;
		FUNC11(MSG_DEBUG, "[hs20] Removing extra CDATA container");
		tmp = FUNC8(cdata + 9);
		if (tmp) {
			cdata_end = FUNC9(tmp, "]]>");
			if (cdata_end)
				*cdata_end = '\0';
			FUNC11(MSG_DEBUG, "[hs20] nodeContainer text with CDATA container removed: '%s'",
				   tmp);
			tnds = FUNC15(ctx->xml, tmp);
			FUNC1(tmp);
		} else
			tnds = NULL;
	} else
		tnds = FUNC15(ctx->xml, str);
	FUNC19(ctx->xml, str);
	if (tnds == NULL) {
		FUNC11(MSG_INFO, "[hs20] Could not parse nodeContainer text");
		FUNC16(ctx->xml, uri);
		return -1;
	}

	unode = FUNC10(ctx->xml, tnds);
	FUNC14(ctx->xml, tnds);
	if (unode == NULL) {
		FUNC11(MSG_INFO, "[hs20] Could not parse nodeContainer TNDS text");
		FUNC16(ctx->xml, uri);
		return -1;
	}

	FUNC0(ctx, "Parsed TNDS", unode);

	if (FUNC3(ctx->xml, unode, name) == NULL) {
		FUNC11(MSG_INFO, "[hs20] %s node not found", name);
		FUNC14(ctx->xml, unode);
		FUNC16(ctx->xml, uri);
		return -1;
	}

	if (FUNC6(uri, "./Wi-Fi/", 8) != 0) {
		FUNC11(MSG_INFO, "Do not allow update outside ./Wi-Fi");
		FUNC14(ctx->xml, unode);
		FUNC16(ctx->xml, uri);
		return -1;
	}
	pos = uri + 8;

	if (ctx->fqdn == NULL) {
		FUNC11(MSG_INFO, "FQDN not known");
		FUNC14(ctx->xml, unode);
		FUNC16(ctx->xml, uri);
		return -1;
	}
	fqdn_len = FUNC5(ctx->fqdn);
	if (FUNC6(pos, ctx->fqdn, fqdn_len) != 0 ||
	    pos[fqdn_len] != '/') {
		FUNC11(MSG_INFO, "Do not allow update outside ./Wi-Fi/%s",
			   ctx->fqdn);
		FUNC14(ctx->xml, unode);
		FUNC16(ctx->xml, uri);
		return -1;
	}
	pos += fqdn_len + 1;

	if (FUNC6(pos, "PerProviderSubscription/", 24) != 0) {
		FUNC11(MSG_INFO, "Do not allow update outside ./Wi-Fi/%s/PerProviderSubscription",
			   ctx->fqdn);
		FUNC14(ctx->xml, unode);
		FUNC16(ctx->xml, uri);
		return -1;
	}
	pos += 24;

	FUNC11(MSG_INFO, "Update command for PPS node %s", pos);

	node = FUNC2(ctx->xml, pps, pos);
	if (node) {
		parent = FUNC17(ctx->xml, node);
		FUNC13(ctx->xml, node);
		FUNC11(MSG_INFO, "Replace '%s' node", name);
	} else {
		char *pos2;
		pos2 = FUNC7(pos, '/');
		if (pos2 == NULL) {
			parent = pps;
		} else {
			*pos2 = '\0';
			parent = FUNC2(ctx->xml, pps, pos);
		}
		if (parent == NULL) {
			FUNC11(MSG_INFO, "Could not find parent %s", pos);
			FUNC14(ctx->xml, unode);
			FUNC16(ctx->xml, uri);
			return -1;
		}
		FUNC11(MSG_INFO, "Add '%s' node", name);
	}
	FUNC12(ctx->xml, parent, unode);

	FUNC16(ctx->xml, uri);

	return 0;
}