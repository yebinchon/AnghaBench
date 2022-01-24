#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * response; int /*<<< orphan*/ * tst_info; int /*<<< orphan*/ * request; } ;
typedef  TYPE_1__ TS_RESP_CTX ;
typedef  int /*<<< orphan*/  TS_RESP ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  TS_F_TS_RESP_CREATE_RESPONSE ; 
 int /*<<< orphan*/  TS_INFO_BAD_DATA_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  TS_R_RESPONSE_SETUP_ERROR ; 
 int /*<<< orphan*/  TS_STATUS_GRANTED ; 
 int /*<<< orphan*/  TS_STATUS_REJECTION ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

TS_RESP *FUNC14(TS_RESP_CTX *ctx, BIO *req_bio)
{
    ASN1_OBJECT *policy;
    TS_RESP *response;
    int result = 0;

    FUNC8(ctx);

    if ((ctx->response = FUNC4()) == NULL) {
        FUNC5(TS_F_TS_RESP_CREATE_RESPONSE, ERR_R_MALLOC_FAILURE);
        goto end;
    }
    if ((ctx->request = FUNC6(req_bio, NULL)) == NULL) {
        FUNC1(ctx, TS_STATUS_REJECTION,
                                    "Bad request format or system error.");
        FUNC0(ctx, TS_INFO_BAD_DATA_FORMAT);
        goto end;
    }
    if (!FUNC1(ctx, TS_STATUS_GRANTED, NULL))
        goto end;
    if (!FUNC9(ctx))
        goto end;
    if ((policy = FUNC11(ctx)) == NULL)
        goto end;
    if ((ctx->tst_info = FUNC10(ctx, policy)) == NULL)
        goto end;
    if (!FUNC12(ctx))
        goto end;
    if (!FUNC13(ctx))
        goto end;
    result = 1;

 end:
    if (!result) {
        FUNC5(TS_F_TS_RESP_CREATE_RESPONSE, TS_R_RESPONSE_SETUP_ERROR);
        if (ctx->response != NULL) {
            if (FUNC2(ctx,
                                                 TS_STATUS_REJECTION,
                                                 "Error during response "
                                                 "generation.") == 0) {
                FUNC3(ctx->response);
                ctx->response = NULL;
            }
        }
    }
    response = ctx->response;
    ctx->response = NULL;       /* Ownership will be returned to caller. */
    FUNC7(ctx);
    return response;
}