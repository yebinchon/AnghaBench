#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  dirn; } ;
struct TYPE_15__ {TYPE_2__ d; int /*<<< orphan*/  type; } ;
struct TYPE_14__ {int flags; int /*<<< orphan*/  signer_cert; TYPE_1__* request; int /*<<< orphan*/  micros; int /*<<< orphan*/  millis; int /*<<< orphan*/  seconds; int /*<<< orphan*/  clock_precision_digits; int /*<<< orphan*/  time_cb_data; int /*<<< orphan*/  (* time_cb ) (TYPE_3__*,int /*<<< orphan*/ ,long*,long*) ;int /*<<< orphan*/  serial_cb_data; int /*<<< orphan*/ * (* serial_cb ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int /*<<< orphan*/ * nonce; int /*<<< orphan*/  msg_imprint; } ;
typedef  int /*<<< orphan*/  TS_TST_INFO ;
typedef  TYPE_3__ TS_RESP_CTX ;
typedef  int /*<<< orphan*/  TS_ACCURACY ;
typedef  TYPE_4__ GENERAL_NAME ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;
typedef  int /*<<< orphan*/  ASN1_GENERALIZEDTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_4__* FUNC3 () ; 
 int /*<<< orphan*/  GEN_DIRNAME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_F_TS_RESP_CREATE_TST_INFO ; 
 int TS_ORDERING ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,long,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_R_TST_INFO_SETUP_ERROR ; 
 int /*<<< orphan*/  TS_STATUS_REJECTION ; 
 int TS_TSA_NAME ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,int /*<<< orphan*/ ,long*,long*) ; 

__attribute__((used)) static TS_TST_INFO *FUNC27(TS_RESP_CTX *ctx,
                                            ASN1_OBJECT *policy)
{
    int result = 0;
    TS_TST_INFO *tst_info = NULL;
    ASN1_INTEGER *serial = NULL;
    ASN1_GENERALIZEDTIME *asn1_time = NULL;
    long sec, usec;
    TS_ACCURACY *accuracy = NULL;
    const ASN1_INTEGER *nonce;
    GENERAL_NAME *tsa_name = NULL;

    if ((tst_info = FUNC12()) == NULL)
        goto end;
    if (!FUNC21(tst_info, 1))
        goto end;
    if (!FUNC17(tst_info, policy))
        goto end;
    if (!FUNC14(tst_info, ctx->request->msg_imprint))
        goto end;
    if ((serial = ctx->serial_cb(ctx, ctx->serial_cb_data)) == NULL
        || !FUNC18(tst_info, serial))
        goto end;
    if (!ctx->time_cb(ctx, ctx->time_cb_data, &sec, &usec)
        || (asn1_time =
            FUNC10(NULL, sec, usec,
                                        ctx->clock_precision_digits)) == NULL
        || !FUNC19(tst_info, asn1_time))
        goto end;

    if ((ctx->seconds || ctx->millis || ctx->micros)
        && (accuracy = FUNC5()) == NULL)
        goto end;
    if (ctx->seconds && !FUNC8(accuracy, ctx->seconds))
        goto end;
    if (ctx->millis && !FUNC7(accuracy, ctx->millis))
        goto end;
    if (ctx->micros && !FUNC6(accuracy, ctx->micros))
        goto end;
    if (accuracy && !FUNC13(tst_info, accuracy))
        goto end;

    if ((ctx->flags & TS_ORDERING)
        && !FUNC16(tst_info, 1))
        goto end;

    if ((nonce = ctx->request->nonce) != NULL
        && !FUNC15(tst_info, nonce))
        goto end;

    if (ctx->flags & TS_TSA_NAME) {
        if ((tsa_name = FUNC3()) == NULL)
            goto end;
        tsa_name->type = GEN_DIRNAME;
        tsa_name->d.dirn =
            FUNC23(FUNC24(ctx->signer_cert));
        if (!tsa_name->d.dirn)
            goto end;
        if (!FUNC20(tst_info, tsa_name))
            goto end;
    }

    result = 1;
 end:
    if (!result) {
        FUNC11(tst_info);
        tst_info = NULL;
        FUNC22(TS_F_TS_RESP_CREATE_TST_INFO, TS_R_TST_INFO_SETUP_ERROR);
        FUNC9(ctx, TS_STATUS_REJECTION,
                                         "Error during TSTInfo "
                                         "generation.");
    }
    FUNC2(tsa_name);
    FUNC4(accuracy);
    FUNC0(asn1_time);
    FUNC1(serial);

    return tst_info;
}