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
 int crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES ; 
 scalar_t__ FUNC0 (unsigned char*,unsigned char const*,unsigned char const*) ; 
 int FUNC1 (unsigned char*,unsigned char const*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 

int
FUNC3(
    unsigned char *m, const unsigned char *c, const unsigned char *mac,
    unsigned long long clen, const unsigned char *n, const unsigned char *pk,
    const unsigned char *sk)
{
    unsigned char k[crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES];
    int           ret;

    if (FUNC0(k, pk, sk) != 0) {
        return -1;
    }
    ret = FUNC1(
        m, c, mac, clen, n, k);
    FUNC2(k, sizeof k);

    return ret;
}