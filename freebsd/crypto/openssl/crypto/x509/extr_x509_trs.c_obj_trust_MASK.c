#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ trust; scalar_t__ reject; } ;
typedef  TYPE_1__ X509_CERT_AUX ;
struct TYPE_6__ {TYPE_1__* aux; } ;
typedef  TYPE_2__ X509 ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int NID_anyExtendedKeyUsage ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int X509_TRUST_DO_SS_COMPAT ; 
 int X509_TRUST_OK_ANY_EKU ; 
 int X509_TRUST_REJECTED ; 
 int X509_TRUST_TRUSTED ; 
 int X509_TRUST_UNTRUSTED ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC4(int id, X509 *x, int flags)
{
    X509_CERT_AUX *ax = x->aux;
    int i;

    if (ax && ax->reject) {
        for (i = 0; i < FUNC1(ax->reject); i++) {
            ASN1_OBJECT *obj = FUNC2(ax->reject, i);
            int nid = FUNC0(obj);

            if (nid == id || (nid == NID_anyExtendedKeyUsage &&
                (flags & X509_TRUST_OK_ANY_EKU)))
                return X509_TRUST_REJECTED;
        }
    }

    if (ax && ax->trust) {
        for (i = 0; i < FUNC1(ax->trust); i++) {
            ASN1_OBJECT *obj = FUNC2(ax->trust, i);
            int nid = FUNC0(obj);

            if (nid == id || (nid == NID_anyExtendedKeyUsage &&
                (flags & X509_TRUST_OK_ANY_EKU)))
                return X509_TRUST_TRUSTED;
        }
        /*
         * Reject when explicit trust EKU are set and none match.
         *
         * Returning untrusted is enough for for full chains that end in
         * self-signed roots, because when explicit trust is specified it
         * suppresses the default blanket trust of self-signed objects.
         *
         * But for partial chains, this is not enough, because absent a similar
         * trust-self-signed policy, non matching EKUs are indistinguishable
         * from lack of EKU constraints.
         *
         * Therefore, failure to match any trusted purpose must trigger an
         * explicit reject.
         */
        return X509_TRUST_REJECTED;
    }

    if ((flags & X509_TRUST_DO_SS_COMPAT) == 0)
        return X509_TRUST_UNTRUSTED;

    /*
     * Not rejected, and there is no list of accepted uses, try compat.
     */
    return FUNC3(NULL, x, flags);
}