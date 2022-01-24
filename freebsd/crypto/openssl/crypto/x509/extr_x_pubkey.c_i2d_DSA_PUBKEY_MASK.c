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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  DSA ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_I2D_DSA_PUBKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char**) ; 

int FUNC5(DSA *a, unsigned char **pp)
{
    EVP_PKEY *pktmp;
    int ret;
    if (!a)
        return 0;
    pktmp = FUNC2();
    if (pktmp == NULL) {
        FUNC0(ASN1_F_I2D_DSA_PUBKEY, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    FUNC3(pktmp, a);
    ret = FUNC4(pktmp, pp);
    FUNC1(pktmp);
    return ret;
}