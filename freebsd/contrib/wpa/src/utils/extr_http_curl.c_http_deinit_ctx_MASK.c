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
struct http_ctx {struct http_ctx* svc_client_key; struct http_ctx* svc_client_cert; int /*<<< orphan*/  svc_password; int /*<<< orphan*/  svc_username; struct http_ctx* svc_ca_fname; struct http_ctx* svc_address; struct http_ctx* curl_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct http_ctx*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct http_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct http_ctx *ctx)
{
	FUNC0(ctx);
	FUNC2(ctx->curl_buf);
	FUNC1();

	FUNC2(ctx->svc_address);
	FUNC2(ctx->svc_ca_fname);
	FUNC3(ctx->svc_username);
	FUNC3(ctx->svc_password);
	FUNC2(ctx->svc_client_cert);
	FUNC2(ctx->svc_client_key);

	FUNC2(ctx);
}