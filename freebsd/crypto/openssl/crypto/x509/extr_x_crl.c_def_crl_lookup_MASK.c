#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ reason; int /*<<< orphan*/  serialNumber; } ;
typedef  TYPE_2__ X509_REVOKED ;
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_10__ {int /*<<< orphan*/ * revoked; } ;
struct TYPE_12__ {TYPE_1__ crl; int /*<<< orphan*/  lock; } ;
typedef  TYPE_3__ X509_CRL ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ CRL_REASON_REMOVE_FROM_CRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(X509_CRL *crl,
                          X509_REVOKED **ret, ASN1_INTEGER *serial,
                          X509_NAME *issuer)
{
    X509_REVOKED rtmp, *rev;
    int idx, num;

    if (crl->crl.revoked == NULL)
        return 0;

    /*
     * Sort revoked into serial number order if not already sorted. Do this
     * under a lock to avoid race condition.
     */
    if (!FUNC5(crl->crl.revoked)) {
        FUNC2(crl->lock);
        FUNC7(crl->crl.revoked);
        FUNC1(crl->lock);
    }
    rtmp.serialNumber = *serial;
    idx = FUNC4(crl->crl.revoked, &rtmp);
    if (idx < 0)
        return 0;
    /* Need to look for matching name */
    for (num = FUNC6(crl->crl.revoked); idx < num; idx++) {
        rev = FUNC8(crl->crl.revoked, idx);
        if (FUNC0(&rev->serialNumber, serial))
            return 0;
        if (FUNC3(crl, issuer, rev)) {
            if (ret)
                *ret = rev;
            if (rev->reason == CRL_REASON_REMOVE_FROM_CRL)
                return 2;
            return 1;
        }
    }
    return 0;
}