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
struct hs20_osu_client {int /*<<< orphan*/  xml; int /*<<< orphan*/  client_cert_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int S_IRWXG ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct hs20_osu_client*,char*) ; 
 scalar_t__ FUNC2 (struct hs20_osu_client*,char*) ; 
 scalar_t__ FUNC3 (struct hs20_osu_client*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct hs20_osu_client*,char*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

int FUNC14(struct hs20_osu_client *ctx, xml_node_t *getcert)
{
	xml_node_t *node;
	char *url, *user = NULL, *pw = NULL;
	char *proto;
	int ret = -1;

	proto = FUNC9(ctx->xml, getcert,
					"enrollmentProtocol");
	if (!proto)
		return -1;
	FUNC7(MSG_INFO, "getCertificate - enrollmentProtocol=%s", proto);
	FUNC8(ctx, "getCertificate - enrollmentProtocol=%s", proto);
	if (FUNC6(proto, "EST") != 0) {
		FUNC7(MSG_INFO, "Unsupported enrollmentProtocol");
		FUNC10(ctx->xml, proto);
		return -1;
	}
	FUNC10(ctx->xml, proto);

	node = FUNC4(ctx->xml, getcert, "enrollmentServerURI");
	if (node == NULL) {
		FUNC7(MSG_INFO, "Could not find enrollmentServerURI node");
		FUNC10(ctx->xml, proto);
		return -1;
	}
	url = FUNC12(ctx->xml, node);
	if (url == NULL) {
		FUNC7(MSG_INFO, "Could not get URL text");
		return -1;
	}
	FUNC7(MSG_INFO, "enrollmentServerURI: %s", url);
	FUNC8(ctx, "enrollmentServerURI: %s", url);

	node = FUNC4(ctx->xml, getcert, "estUserID");
	if (node == NULL && !ctx->client_cert_present) {
		FUNC7(MSG_INFO, "Could not find estUserID node");
		goto fail;
	}
	if (node) {
		user = FUNC12(ctx->xml, node);
		if (user == NULL) {
			FUNC7(MSG_INFO, "Could not get estUserID text");
			goto fail;
		}
		FUNC7(MSG_INFO, "estUserID: %s", user);
		FUNC8(ctx, "estUserID: %s", user);
	}

	node = FUNC4(ctx->xml, getcert, "estPassword");
	if (node == NULL && !ctx->client_cert_present) {
		FUNC7(MSG_INFO, "Could not find estPassword node");
		goto fail;
	}
	if (node) {
		pw = FUNC11(ctx->xml, node, NULL);
		if (pw == NULL) {
			FUNC7(MSG_INFO, "Could not get estPassword text");
			goto fail;
		}
		FUNC7(MSG_INFO, "estPassword: %s", pw);
	}

	FUNC5("Cert", S_IRWXU);
	FUNC0("Cert", S_IRWXU | S_IRWXG);

	if (FUNC2(ctx, url) < 0 ||
	    FUNC1(ctx, url) < 0 ||
	    FUNC3(ctx, url, user, pw) < 0)
		goto fail;

	ret = 0;
fail:
	FUNC13(ctx->xml, url);
	FUNC13(ctx->xml, user);
	FUNC13(ctx->xml, pw);

	return ret;
}