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
struct http_ctx {void* curl_hdr; int /*<<< orphan*/  curl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC1 (void*,char*) ; 
 scalar_t__ FUNC2 (struct http_ctx*,char const*,char const*,char const*,char const*,char const*,char const*) ; 

int FUNC3(struct http_ctx *ctx, const char *address,
		     const char *ca_fname, const char *username,
		     const char *password, const char *client_cert,
		     const char *client_key)
{
	if (FUNC2(ctx, address, ca_fname, username, password,
			     client_cert, client_key) < 0)
		return -1;

	ctx->curl_hdr = FUNC1(ctx->curl_hdr,
					  "Content-Type: application/soap+xml");
	ctx->curl_hdr = FUNC1(ctx->curl_hdr, "SOAPAction: ");
	ctx->curl_hdr = FUNC1(ctx->curl_hdr, "Expect:");
	FUNC0(ctx->curl, CURLOPT_HTTPHEADER, ctx->curl_hdr);

	return 0;
}