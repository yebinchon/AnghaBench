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
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SERIAL_RAND_BITS ; 

int FUNC4(BIGNUM *b, ASN1_INTEGER *ai)
{
    BIGNUM *btmp;
    int ret = 0;

    btmp = b == NULL ? FUNC1() : b;
    if (btmp == NULL)
        return 0;

    if (!FUNC2(btmp, SERIAL_RAND_BITS, BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY))
        goto error;
    if (ai && !FUNC3(btmp, ai))
        goto error;

    ret = 1;

 error:

    if (btmp != b)
        FUNC0(btmp);

    return ret;
}