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
struct hs20_osu_client {char* server_url; int /*<<< orphan*/  xml; int /*<<< orphan*/  http; int /*<<< orphan*/  ca_fname; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,char*,char*,char const*,int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct hs20_osu_client*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static xml_node_t * FUNC11(struct hs20_osu_client *ctx,
				     const char *url, xml_node_t *syncml,
				     const char *ext_hdr,
				     const char *username, const char *password,
				     const char *client_cert,
				     const char *client_key)
{
	xml_node_t *resp;
	char *str, *res;
	char *resp_uri = NULL;

	str = FUNC10(ctx->xml, syncml);
	FUNC8(ctx->xml, syncml);
	if (str == NULL)
		return NULL;

	FUNC5(MSG_INFO, "Send OMA DM Package");
	FUNC7(ctx, "Send OMA DM Package");
	FUNC3(ctx->server_url);
	ctx->server_url = FUNC4(url);
	res = FUNC2(ctx->http, url, str, "application/vnd.syncml.dm+xml",
			ext_hdr, ctx->ca_fname, username, password,
			client_cert, client_key, NULL);
	FUNC3(str);
	FUNC3(resp_uri);
	resp_uri = NULL;

	if (res == NULL) {
		const char *err = FUNC1(ctx->http);
		if (err) {
			FUNC5(MSG_INFO, "HTTP error: %s", err);
			FUNC6(ctx, "HTTP error: %s", err);
		} else {
			FUNC7(ctx, "Failed to send OMA DM Package");
		}
		return NULL;
	}
	FUNC5(MSG_DEBUG, "Server response: %s", res);

	FUNC5(MSG_INFO, "Process OMA DM Package");
	FUNC7(ctx, "Process received OMA DM Package");
	resp = FUNC9(ctx->xml, res);
	FUNC3(res);
	if (resp == NULL) {
		FUNC5(MSG_INFO, "Failed to parse OMA DM response");
		return NULL;
	}

	FUNC0(ctx, "OMA DM Package", resp);

	return resp;
}