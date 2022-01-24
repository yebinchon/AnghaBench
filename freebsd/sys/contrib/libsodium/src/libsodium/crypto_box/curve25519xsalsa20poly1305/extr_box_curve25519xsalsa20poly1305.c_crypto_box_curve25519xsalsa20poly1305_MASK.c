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
 int crypto_box_curve25519xsalsa20poly1305_BEFORENMBYTES ; 
 int FUNC0 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char*) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 

int
FUNC3(unsigned char *c, const unsigned char *m,
                                      unsigned long long   mlen,
                                      const unsigned char *n,
                                      const unsigned char *pk,
                                      const unsigned char *sk)
{
    unsigned char k[crypto_box_curve25519xsalsa20poly1305_BEFORENMBYTES];
    int           ret;

    if (FUNC1(k, pk, sk) != 0) {
        return -1;
    }
    ret = FUNC0(c, m, mlen, n, k);
    FUNC2(k, sizeof k);

    return ret;
}