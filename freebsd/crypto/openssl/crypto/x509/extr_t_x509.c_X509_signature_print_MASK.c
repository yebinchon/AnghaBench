#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
struct TYPE_7__ {int (* sig_print ) (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ EVP_PKEY_ASN1_METHOD ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int NID_undef ; 
 scalar_t__ FUNC2 (int,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

int FUNC7(BIO *bp, const X509_ALGOR *sigalg,
                         const ASN1_STRING *sig)
{
    int sig_nid;
    if (FUNC0(bp, "    Signature Algorithm: ") <= 0)
        return 0;
    if (FUNC5(bp, sigalg->algorithm) <= 0)
        return 0;

    sig_nid = FUNC3(sigalg->algorithm);
    if (sig_nid != NID_undef) {
        int pkey_nid, dig_nid;
        const EVP_PKEY_ASN1_METHOD *ameth;
        if (FUNC2(sig_nid, &dig_nid, &pkey_nid)) {
            ameth = FUNC1(NULL, pkey_nid);
            if (ameth && ameth->sig_print)
                return ameth->sig_print(bp, sigalg, sig, 9, 0);
        }
    }
    if (sig)
        return FUNC4(bp, sig, 9);
    else if (FUNC0(bp, "\n") <= 0)
        return 0;
    return 1;
}