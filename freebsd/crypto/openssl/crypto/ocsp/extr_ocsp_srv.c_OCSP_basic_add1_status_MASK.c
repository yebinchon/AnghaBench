#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * responses; } ;
struct TYPE_18__ {TYPE_2__ tbsResponseData; } ;
struct TYPE_13__ {int /*<<< orphan*/ * unknown; int /*<<< orphan*/ * good; TYPE_4__* revoked; } ;
struct TYPE_17__ {int type; TYPE_1__ value; } ;
struct TYPE_16__ {int /*<<< orphan*/ * revocationReason; int /*<<< orphan*/  revocationTime; } ;
struct TYPE_15__ {TYPE_5__* certStatus; int /*<<< orphan*/ * certId; int /*<<< orphan*/  nextUpdate; int /*<<< orphan*/  thisUpdate; } ;
typedef  TYPE_3__ OCSP_SINGLERESP ;
typedef  TYPE_4__ OCSP_REVOKEDINFO ;
typedef  TYPE_5__ OCSP_CERTSTATUS ;
typedef  int /*<<< orphan*/  OCSP_CERTID ;
typedef  TYPE_6__ OCSP_BASICRESP ;
typedef  int /*<<< orphan*/  ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCSP_F_OCSP_BASIC_ADD1_STATUS ; 
 TYPE_4__* FUNC6 () ; 
 int OCSP_REVOKED_STATUS_NOSTATUS ; 
 int /*<<< orphan*/  OCSP_R_NO_REVOKED_TIME ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  V_OCSP_CERTSTATUS_GOOD 130 
#define  V_OCSP_CERTSTATUS_REVOKED 129 
#define  V_OCSP_CERTSTATUS_UNKNOWN 128 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 

OCSP_SINGLERESP *FUNC12(OCSP_BASICRESP *rsp,
                                        OCSP_CERTID *cid,
                                        int status, int reason,
                                        ASN1_TIME *revtime,
                                        ASN1_TIME *thisupd,
                                        ASN1_TIME *nextupd)
{
    OCSP_SINGLERESP *single = NULL;
    OCSP_CERTSTATUS *cs;
    OCSP_REVOKEDINFO *ri;

    if (rsp->tbsResponseData.responses == NULL
        && (rsp->tbsResponseData.responses
                = FUNC10()) == NULL)
        goto err;

    if ((single = FUNC8()) == NULL)
        goto err;

    if (!FUNC3(thisupd, &single->thisUpdate))
        goto err;
    if (nextupd &&
        !FUNC3(nextupd, &single->nextUpdate))
        goto err;

    FUNC5(single->certId);

    if ((single->certId = FUNC4(cid)) == NULL)
        goto err;

    cs = single->certStatus;
    switch (cs->type = status) {
    case V_OCSP_CERTSTATUS_REVOKED:
        if (!revtime) {
            FUNC9(OCSP_F_OCSP_BASIC_ADD1_STATUS, OCSP_R_NO_REVOKED_TIME);
            goto err;
        }
        if ((cs->value.revoked = ri = FUNC6()) == NULL)
            goto err;
        if (!FUNC3(revtime, &ri->revocationTime))
            goto err;
        if (reason != OCSP_REVOKED_STATUS_NOSTATUS) {
            if ((ri->revocationReason = FUNC0()) == NULL)
                goto err;
            if (!(FUNC1(ri->revocationReason, reason)))
                goto err;
        }
        break;

    case V_OCSP_CERTSTATUS_GOOD:
        if ((cs->value.good = FUNC2()) == NULL)
            goto err;
        break;

    case V_OCSP_CERTSTATUS_UNKNOWN:
        if ((cs->value.unknown = FUNC2()) == NULL)
            goto err;
        break;

    default:
        goto err;

    }
    if (!(FUNC11(rsp->tbsResponseData.responses, single)))
        goto err;
    return single;
 err:
    FUNC7(single);
    return NULL;
}