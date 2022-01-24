#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* krb5_init_creds_context ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_7__ {struct TYPE_7__* ppaid; int /*<<< orphan*/  as_req; int /*<<< orphan*/  error; int /*<<< orphan*/  enc_part; int /*<<< orphan*/  as_rep; int /*<<< orphan*/  md; int /*<<< orphan*/  cred; int /*<<< orphan*/  req_buffer; struct TYPE_7__* password; struct TYPE_7__* keytab_data; struct TYPE_7__* in_tkt_service; struct TYPE_7__* pre_auth_types; struct TYPE_7__* etypes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11(krb5_context context, krb5_init_creds_context ctx)
{
    if (ctx->etypes)
	FUNC0(ctx->etypes);
    if (ctx->pre_auth_types)
	FUNC0 (ctx->pre_auth_types);
    if (ctx->in_tkt_service)
	FUNC0(ctx->in_tkt_service);
    if (ctx->keytab_data)
	FUNC0(ctx->keytab_data);
    if (ctx->password) {
	FUNC9(ctx->password, 0, FUNC10(ctx->password));
	FUNC0(ctx->password);
    }
    FUNC7(&ctx->req_buffer);
    FUNC8(context, &ctx->cred);
    FUNC5(&ctx->md);
    FUNC1(&ctx->as_rep);
    FUNC3(&ctx->enc_part);
    FUNC4(&ctx->error);
    FUNC2(&ctx->as_req);
    if (ctx->ppaid) {
	FUNC6(context, ctx->ppaid);
	FUNC0(ctx->ppaid);
    }
    FUNC9(ctx, 0, sizeof(*ctx));
}