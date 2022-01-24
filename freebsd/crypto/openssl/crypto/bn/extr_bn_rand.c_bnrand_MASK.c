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
typedef  scalar_t__ BNRAND_FLAG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BNRAND ; 
 int BN_RAND_BOTTOM_ANY ; 
 int BN_RAND_TOP_ANY ; 
 int /*<<< orphan*/  BN_R_BITS_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ NORMAL ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 unsigned char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned char*,int) ; 
 scalar_t__ FUNC6 (unsigned char*,int) ; 
 scalar_t__ TESTING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(BNRAND_FLAG flag, BIGNUM *rnd, int bits, int top, int bottom)
{
    unsigned char *buf = NULL;
    int b, ret = 0, bit, bytes, mask;

    if (bits == 0) {
        if (top != BN_RAND_TOP_ANY || bottom != BN_RAND_BOTTOM_ANY)
            goto toosmall;
        FUNC1(rnd);
        return 1;
    }
    if (bits < 0 || (bits == 1 && top > 0))
        goto toosmall;

    bytes = (bits + 7) / 8;
    bit = (bits - 1) % 8;
    mask = 0xff << (bit + 1);

    buf = FUNC4(bytes);
    if (buf == NULL) {
        FUNC2(BN_F_BNRAND, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /* make a random number and set the top and bottom bits */
    b = flag == NORMAL ? FUNC5(buf, bytes) : FUNC6(buf, bytes);
    if (b <= 0)
        goto err;

    if (flag == TESTING) {
        /*
         * generate patterns that are more likely to trigger BN library bugs
         */
        int i;
        unsigned char c;

        for (i = 0; i < bytes; i++) {
            if (FUNC5(&c, 1) <= 0)
                goto err;
            if (c >= 128 && i > 0)
                buf[i] = buf[i - 1];
            else if (c < 42)
                buf[i] = 0;
            else if (c < 84)
                buf[i] = 255;
        }
    }

    if (top >= 0) {
        if (top) {
            if (bit == 0) {
                buf[0] = 1;
                buf[1] |= 0x80;
            } else {
                buf[0] |= (3 << (bit - 1));
            }
        } else {
            buf[0] |= (1 << bit);
        }
    }
    buf[0] &= ~mask;
    if (bottom)                 /* set bottom bit if requested */
        buf[bytes - 1] |= 1;
    if (!FUNC0(buf, bytes, rnd))
        goto err;
    ret = 1;
 err:
    FUNC3(buf, bytes);
    FUNC7(rnd);
    return ret;

toosmall:
    FUNC2(BN_F_BNRAND, BN_R_BITS_TOO_SMALL);
    return 0;
}