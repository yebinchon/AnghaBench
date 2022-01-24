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
 int DM_RESP_BAD_REQUEST ; 
 int DM_RESP_COMMAND_FAILED ; 
 int DM_RESP_NOT_FOUND ; 
 int DM_RESP_OK ; 
 int DM_RESP_PERMISSION_DENIED ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 size_t FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct hs20_osu_client *ctx, xml_node_t *get,
		      xml_node_t *pps, const char *pps_fname, char **value)
{
	char *locuri, *pos;
	size_t fqdn_len;
	xml_node_t *pps_node;
	const char *name;

	*value = NULL;

	locuri = FUNC1(ctx, get);
	if (locuri == NULL)
		return DM_RESP_BAD_REQUEST;

	FUNC6(MSG_INFO, "Get command target LocURI: %s", locuri);
	if (FUNC5(locuri, "./Wi-Fi/", 8) != 0) {
		FUNC6(MSG_INFO, "Do not allow Get outside ./Wi-Fi");
		FUNC2(locuri);
		return DM_RESP_PERMISSION_DENIED;
	}
	pos = locuri + 8;

	if (ctx->fqdn == NULL)
		return DM_RESP_COMMAND_FAILED;
	fqdn_len = FUNC4(ctx->fqdn);
	if (FUNC5(pos, ctx->fqdn, fqdn_len) != 0 ||
	    pos[fqdn_len] != '/') {
		FUNC6(MSG_INFO, "Do not allow Get outside ./Wi-Fi/%s",
			   ctx->fqdn);
		FUNC2(locuri);
		return DM_RESP_PERMISSION_DENIED;
	}
	pos += fqdn_len + 1;

	if (FUNC5(pos, "PerProviderSubscription/", 24) != 0) {
		FUNC6(MSG_INFO,
			   "Do not allow Get outside ./Wi-Fi/%s/PerProviderSubscription",
			   ctx->fqdn);
		FUNC2(locuri);
		return DM_RESP_PERMISSION_DENIED;
	}
	pos += 24;

	FUNC6(MSG_INFO, "Get command for PPS node %s", pos);

	pps_node = FUNC0(ctx->xml, pps, pos);
	if (pps_node == NULL) {
		FUNC6(MSG_INFO, "Specified PPS node not found");
		FUNC2(locuri);
		return DM_RESP_NOT_FOUND;
	}

	name = FUNC7(ctx->xml, pps_node);
	FUNC6(MSG_INFO, "Get command returned node with name '%s'", name);
	if (FUNC3(name, "Password") == 0) {
		FUNC6(MSG_INFO, "Do not allow Get for Password node");
		FUNC2(locuri);
		return DM_RESP_PERMISSION_DENIED;
	}

	/*
	 * TODO: No support for DMTNDS, so if interior node, reply with a
	 * list of children node names in Results element. The child list type is
	 * defined in [DMTND].
	 */

	*value = FUNC8(ctx->xml, pps_node);
	if (*value == NULL)
		return DM_RESP_COMMAND_FAILED;

	return DM_RESP_OK;
}