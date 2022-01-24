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
struct http_ctx {int /*<<< orphan*/  svc_client_key; int /*<<< orphan*/  svc_client_cert; int /*<<< orphan*/  svc_password; int /*<<< orphan*/  svc_username; int /*<<< orphan*/  svc_ca_fname; int /*<<< orphan*/  svc_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct http_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct http_ctx*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct http_ctx *ctx)
{
	char *address = NULL;
	char *ca_fname = NULL;
	char *username = NULL;
	char *password = NULL;
	char *client_cert = NULL;
	char *client_key = NULL;
	int ret;

	FUNC0(ctx);

	FUNC1(&address, ctx->svc_address);
	FUNC1(&ca_fname, ctx->svc_ca_fname);
	FUNC1(&username, ctx->svc_username);
	FUNC1(&password, ctx->svc_password);
	FUNC1(&client_cert, ctx->svc_client_cert);
	FUNC1(&client_key, ctx->svc_client_key);

	ret = FUNC3(ctx, address, ca_fname, username, password,
			       client_cert, client_key);
	FUNC2(address);
	FUNC2(ca_fname);
	FUNC4(username);
	FUNC4(password);
	FUNC2(client_cert);
	FUNC2(client_key);
	return ret;
}