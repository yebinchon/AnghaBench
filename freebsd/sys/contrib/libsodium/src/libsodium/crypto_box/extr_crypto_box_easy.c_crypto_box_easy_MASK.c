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
 int crypto_box_MACBYTES ; 
 unsigned long long crypto_box_MESSAGEBYTES_MAX ; 
 int FUNC0 (unsigned char*,unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2(unsigned char *c, const unsigned char *m,
                unsigned long long mlen, const unsigned char *n,
                const unsigned char *pk, const unsigned char *sk)
{
    if (mlen > crypto_box_MESSAGEBYTES_MAX) {
        FUNC1();
    }
    return FUNC0(c + crypto_box_MACBYTES, c, m, mlen, n,
                               pk, sk);
}