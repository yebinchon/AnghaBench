#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  singleRequestExtensions; int /*<<< orphan*/ * reqCert; } ;
struct TYPE_9__ {int /*<<< orphan*/  requestExtensions; int /*<<< orphan*/  requestList; int /*<<< orphan*/ * requestorName; int /*<<< orphan*/  version; } ;
struct TYPE_8__ {TYPE_1__* optionalSignature; TYPE_3__ tbsRequest; } ;
struct TYPE_7__ {int /*<<< orphan*/  certs; int /*<<< orphan*/  signature; int /*<<< orphan*/  signatureAlgorithm; } ;
typedef  TYPE_1__ OCSP_SIGNATURE ;
typedef  TYPE_2__ OCSP_REQUEST ;
typedef  TYPE_3__ OCSP_REQINFO ;
typedef  TYPE_4__ OCSP_ONEREQ ;
typedef  int /*<<< orphan*/  OCSP_CERTID ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,long,long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

int FUNC13(BIO *bp, OCSP_REQUEST *o, unsigned long flags)
{
    int i;
    long l;
    OCSP_CERTID *cid = NULL;
    OCSP_ONEREQ *one = NULL;
    OCSP_REQINFO *inf = &o->tbsRequest;
    OCSP_SIGNATURE *sig = o->optionalSignature;

    if (FUNC2(bp, "OCSP Request Data:\n", 19) <= 0)
        goto err;
    l = FUNC0(inf->version);
    if (FUNC1(bp, "    Version: %lu (0x%lx)", l + 1, l) <= 0)
        goto err;
    if (inf->requestorName != NULL) {
        if (FUNC2(bp, "\n    Requestor Name: ", 21) <= 0)
            goto err;
        FUNC3(bp, inf->requestorName);
    }
    if (FUNC2(bp, "\n    Requestor List:\n", 21) <= 0)
        goto err;
    for (i = 0; i < FUNC9(inf->requestList); i++) {
        one = FUNC10(inf->requestList, i);
        cid = one->reqCert;
        FUNC8(bp, cid, 8);
        if (!FUNC5(bp,
                                     "Request Single Extensions",
                                     one->singleRequestExtensions, flags, 8))
            goto err;
    }
    if (!FUNC5(bp, "Request Extensions",
                                 inf->requestExtensions, flags, 4))
        goto err;
    if (sig) {
        FUNC7(bp, &sig->signatureAlgorithm, sig->signature);
        for (i = 0; i < FUNC11(sig->certs); i++) {
            FUNC6(bp, FUNC12(sig->certs, i));
            FUNC4(bp, FUNC12(sig->certs, i));
        }
    }
    return 1;
 err:
    return 0;
}