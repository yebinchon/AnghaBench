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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__* FUNC0 (scalar_t__*,size_t,int,int) ; 

__attribute__((used)) static uint8_t *
FUNC1(uint8_t *dst, size_t dstlen, const uint8_t *src, size_t srclen)
{
    size_t i;

    for (i = 0; i < srclen;) {
        uint8_t *dnext;
        uint32_t value = 0, bits = 0;

        do {
            value |= (uint32_t) src[i++] << bits;
            bits += 8;
        } while (bits < 24 && i < srclen);

        dnext = FUNC0(dst, dstlen, value, bits);
        if (!dnext) {
            return NULL; /* LCOV_EXCL_LINE */
        }
        dstlen -= dnext - dst;
        dst = dnext;
    }
    return dst;
}