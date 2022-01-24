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

/* Variables and functions */
 unsigned long long crypto_sign_ed25519_MESSAGEBYTES_MAX ; 
 scalar_t__ FUNC0 (unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,unsigned long long) ; 

int
FUNC3(unsigned char *m, unsigned long long *mlen_p,
                         const unsigned char *sm, unsigned long long smlen,
                         const unsigned char *pk)
{
    unsigned long long mlen;

    if (smlen < 64 || smlen - 64 > crypto_sign_ed25519_MESSAGEBYTES_MAX) {
        goto badsig;
    }
    mlen = smlen - 64;
    if (FUNC0(sm, sm + 64, mlen, pk) != 0) {
        FUNC2(m, 0, mlen);
        goto badsig;
    }
    if (mlen_p != NULL) {
        *mlen_p = mlen;
    }
    FUNC1(m, sm + 64, mlen);

    return 0;

badsig:
    if (mlen_p != NULL) {
        *mlen_p = 0;
    }
    return -1;
}