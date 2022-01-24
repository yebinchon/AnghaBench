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
typedef  int /*<<< orphan*/  X509_PUBKEY ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned char const**,long) ; 

EVP_PKEY *FUNC4(EVP_PKEY **a, const unsigned char **pp, long length)
{
    X509_PUBKEY *xpk;
    EVP_PKEY *pktmp;
    const unsigned char *q;
    q = *pp;
    xpk = FUNC3(NULL, &q, length);
    if (!xpk)
        return NULL;
    pktmp = FUNC2(xpk);
    FUNC1(xpk);
    if (!pktmp)
        return NULL;
    *pp = q;
    if (a) {
        FUNC0(*a);
        *a = pktmp;
    }
    return pktmp;
}