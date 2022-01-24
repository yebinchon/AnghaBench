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
struct http_ctx {char* last_err; char* curl_buf; size_t curl_buf_len; } ;
typedef  char const curl_slist ;
typedef  int /*<<< orphan*/  ct ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLINFO_RESPONSE_CODE ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_POSTFIELDS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC3 (scalar_t__) ; 
 char* FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct http_ctx*) ; 
 int /*<<< orphan*/ * FUNC6 (struct http_ctx*,char const*,char const*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

char * FUNC9(struct http_ctx *ctx, const char *url, const char *data,
		 const char *content_type, const char *ext_hdr,
		 const char *ca_fname,
		 const char *username, const char *password,
		 const char *client_cert, const char *client_key,
		 size_t *resp_len)
{
	long http = 0;
	CURLcode res;
	char *ret;
	CURL *curl;
	struct curl_slist *curl_hdr = NULL;

	ctx->last_err = NULL;
	FUNC8(MSG_DEBUG, "curl: HTTP POST to %s", url);
	curl = FUNC6(ctx, url, ca_fname, username, password,
			       client_cert, client_key);
	if (curl == NULL)
		return NULL;

	if (content_type) {
		char ct[200];
		FUNC7(ct, sizeof(ct), "Content-Type: %s", content_type);
		curl_hdr = FUNC4(curl_hdr, ct);
	}
	if (ext_hdr)
		curl_hdr = FUNC4(curl_hdr, ext_hdr);
	FUNC2(curl, CURLOPT_HTTPHEADER, curl_hdr);

	FUNC2(curl, CURLOPT_POSTFIELDS, data);
	FUNC5(ctx);

	res = FUNC1(curl);
	if (res != CURLE_OK) {
		if (!ctx->last_err)
			ctx->last_err = FUNC3(res);
		FUNC8(MSG_ERROR, "curl_easy_perform() failed: %s",
			   ctx->last_err);
		FUNC5(ctx);
		return NULL;
	}

	FUNC0(curl, CURLINFO_RESPONSE_CODE, &http);
	FUNC8(MSG_DEBUG, "curl: Server response code %ld", http);
	if (http != 200) {
		ctx->last_err = "HTTP POST failed";
		FUNC8(MSG_INFO, "HTTP POST failed - code %ld", http);
		FUNC5(ctx);
		return NULL;
	}

	if (ctx->curl_buf == NULL)
		return NULL;

	ret = ctx->curl_buf;
	if (resp_len)
		*resp_len = ctx->curl_buf_len;
	ctx->curl_buf = NULL;
	ctx->curl_buf_len = 0;

	FUNC8(MSG_MSGDUMP, "Server response:\n%s", ret);

	return ret;
}