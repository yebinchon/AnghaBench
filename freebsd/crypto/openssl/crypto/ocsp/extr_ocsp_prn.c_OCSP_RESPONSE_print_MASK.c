#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_4__* revoked; } ;
struct TYPE_25__ {scalar_t__ type; TYPE_2__ value; } ;
struct TYPE_24__ {int /*<<< orphan*/  responseType; } ;
struct TYPE_17__ {int /*<<< orphan*/  byKey; int /*<<< orphan*/  byName; } ;
struct TYPE_22__ {int type; TYPE_1__ value; } ;
struct TYPE_23__ {int /*<<< orphan*/  responseExtensions; int /*<<< orphan*/  responses; scalar_t__ producedAt; TYPE_6__ responderId; int /*<<< orphan*/  version; } ;
struct TYPE_21__ {scalar_t__ responseStatus; TYPE_8__* responseBytes; } ;
struct TYPE_20__ {scalar_t__ revocationReason; scalar_t__ revocationTime; } ;
struct TYPE_19__ {int /*<<< orphan*/  singleExtensions; scalar_t__ nextUpdate; scalar_t__ thisUpdate; TYPE_9__* certStatus; int /*<<< orphan*/ * certId; } ;
struct TYPE_16__ {int /*<<< orphan*/  certs; int /*<<< orphan*/  signature; int /*<<< orphan*/  signatureAlgorithm; TYPE_7__ tbsResponseData; } ;
typedef  TYPE_3__ OCSP_SINGLERESP ;
typedef  TYPE_4__ OCSP_REVOKEDINFO ;
typedef  TYPE_5__ OCSP_RESPONSE ;
typedef  TYPE_6__ OCSP_RESPID ;
typedef  TYPE_7__ OCSP_RESPDATA ;
typedef  TYPE_8__ OCSP_RESPBYTES ;
typedef  TYPE_9__ OCSP_CERTSTATUS ;
typedef  int /*<<< orphan*/  OCSP_CERTID ;
typedef  TYPE_10__ OCSP_BASICRESP ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ NID_id_pkix_OCSP_basic ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (long) ; 
 TYPE_10__* FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ V_OCSP_CERTSTATUS_REVOKED ; 
#define  V_OCSP_RESPID_KEY 129 
#define  V_OCSP_RESPID_NAME 128 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XN_FLAG_ONELINE ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC21 (int /*<<< orphan*/ ,int) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 

int FUNC24(BIO *bp, OCSP_RESPONSE *o, unsigned long flags)
{
    int i, ret = 0;
    long l;
    OCSP_CERTID *cid = NULL;
    OCSP_BASICRESP *br = NULL;
    OCSP_RESPID *rid = NULL;
    OCSP_RESPDATA *rd = NULL;
    OCSP_CERTSTATUS *cst = NULL;
    OCSP_REVOKEDINFO *rev = NULL;
    OCSP_SINGLERESP *single = NULL;
    OCSP_RESPBYTES *rb = o->responseBytes;

    if (FUNC4(bp, "OCSP Response Data:\n") <= 0)
        goto err;
    l = FUNC0(o->responseStatus);
    if (FUNC3(bp, "    OCSP Response Status: %s (0x%lx)\n",
                   FUNC11(l), l) <= 0)
        goto err;
    if (rb == NULL)
        return 1;
    if (FUNC4(bp, "    Response Type: ") <= 0)
        goto err;
    if (FUNC17(bp, rb->responseType) <= 0)
        goto err;
    if (FUNC6(rb->responseType) != NID_id_pkix_OCSP_basic) {
        FUNC4(bp, " (unknown response type)\n");
        return 1;
    }

    if ((br = FUNC10(o)) == NULL)
        goto err;
    rd = &br->tbsResponseData;
    l = FUNC2(rd->version);
    if (FUNC3(bp, "\n    Version: %lu (0x%lx)\n", l + 1, l) <= 0)
        goto err;
    if (FUNC4(bp, "    Responder Id: ") <= 0)
        goto err;

    rid = &rd->responderId;
    switch (rid->type) {
    case V_OCSP_RESPID_NAME:
        FUNC14(bp, rid->value.byName, 0, XN_FLAG_ONELINE);
        break;
    case V_OCSP_RESPID_KEY:
        FUNC18(bp, rid->value.byKey, 0);
        break;
    }

    if (FUNC3(bp, "\n    Produced At: ") <= 0)
        goto err;
    if (!FUNC1(bp, rd->producedAt))
        goto err;
    if (FUNC3(bp, "\n    Responses:\n") <= 0)
        goto err;
    for (i = 0; i < FUNC20(rd->responses); i++) {
        if (!FUNC21(rd->responses, i))
            continue;
        single = FUNC21(rd->responses, i);
        cid = single->certId;
        if (FUNC19(bp, cid, 4) <= 0)
            goto err;
        cst = single->certStatus;
        if (FUNC3(bp, "    Cert Status: %s",
                       FUNC8(cst->type)) <= 0)
            goto err;
        if (cst->type == V_OCSP_CERTSTATUS_REVOKED) {
            rev = cst->value.revoked;
            if (FUNC3(bp, "\n    Revocation Time: ") <= 0)
                goto err;
            if (!FUNC1(bp, rev->revocationTime))
                goto err;
            if (rev->revocationReason) {
                l = FUNC0(rev->revocationReason);
                if (FUNC3(bp,
                               "\n    Revocation Reason: %s (0x%lx)",
                               FUNC9(l), l) <= 0)
                    goto err;
            }
        }
        if (FUNC3(bp, "\n    This Update: ") <= 0)
            goto err;
        if (!FUNC1(bp, single->thisUpdate))
            goto err;
        if (single->nextUpdate) {
            if (FUNC3(bp, "\n    Next Update: ") <= 0)
                goto err;
            if (!FUNC1(bp, single->nextUpdate))
                goto err;
        }
        if (FUNC5(bp, "\n", 1) <= 0)
            goto err;
        if (!FUNC13(bp,
                                     "Response Single Extensions",
                                     single->singleExtensions, flags, 8))
            goto err;
        if (FUNC5(bp, "\n", 1) <= 0)
            goto err;
    }
    if (!FUNC13(bp, "Response Extensions",
                                 rd->responseExtensions, flags, 4))
        goto err;
    if (FUNC16(bp, &br->signatureAlgorithm, br->signature) <= 0)
        goto err;

    for (i = 0; i < FUNC22(br->certs); i++) {
        FUNC15(bp, FUNC23(br->certs, i));
        FUNC12(bp, FUNC23(br->certs, i));
    }

    ret = 1;
 err:
    FUNC7(br);
    return ret;
}