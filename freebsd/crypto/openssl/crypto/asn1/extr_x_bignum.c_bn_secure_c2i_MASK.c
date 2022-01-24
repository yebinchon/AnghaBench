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
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,unsigned char const*,int,int,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(ASN1_VALUE **pval, const unsigned char *cont, int len,
                         int utype, char *free_cont, const ASN1_ITEM *it)
{
    int ret;
    BIGNUM *bn;

    if (!*pval && !FUNC2(pval, it))
        return 0;

    ret = FUNC1(pval, cont, len, utype, free_cont, it);
    if (!ret)
        return 0;

    /* Set constant-time flag for all secure BIGNUMS */
    bn = (BIGNUM *)*pval;
    FUNC0(bn, BN_FLG_CONSTTIME);
    return ret;
}