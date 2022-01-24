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
 unsigned int VARIANT_NO_PADDING_MASK ; 
 unsigned int VARIANT_URLSAFE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 () ; 

char *
FUNC5(char * const b64, const size_t b64_maxlen,
                  const unsigned char * const bin, const size_t bin_len,
                  const int variant)
{
    size_t       acc_len = (size_t) 0;
    size_t       b64_len;
    size_t       b64_pos = (size_t) 0;
    size_t       bin_pos = (size_t) 0;
    size_t       nibbles;
    size_t       remainder;
    unsigned int acc = 0U;

    FUNC3(variant);
    nibbles = bin_len / 3;
    remainder = bin_len - 3 * nibbles;
    b64_len = nibbles * 4;
    if (remainder != 0) {
        if ((((unsigned int) variant) & VARIANT_NO_PADDING_MASK) == 0U) {
            b64_len += 4;
        } else {
            b64_len += 2 + (remainder >> 1);
        }
    }
    if (b64_maxlen <= b64_len) {
        FUNC4();
    }
    if ((((unsigned int) variant) & VARIANT_URLSAFE_MASK) != 0U) {
        while (bin_pos < bin_len) {
            acc = (acc << 8) + bin[bin_pos++];
            acc_len += 8;
            while (acc_len >= 6) {
                acc_len -= 6;
                b64[b64_pos++] = (char) FUNC2((acc >> acc_len) & 0x3F);
            }
        }
        if (acc_len > 0) {
            b64[b64_pos++] = (char) FUNC2((acc << (6 - acc_len)) & 0x3F);
        }
    } else {
        while (bin_pos < bin_len) {
            acc = (acc << 8) + bin[bin_pos++];
            acc_len += 8;
            while (acc_len >= 6) {
                acc_len -= 6;
                b64[b64_pos++] = (char) FUNC1((acc >> acc_len) & 0x3F);
            }
        }
        if (acc_len > 0) {
            b64[b64_pos++] = (char) FUNC1((acc << (6 - acc_len)) & 0x3F);
        }
    }
    FUNC0(b64_pos <= b64_len);
    while (b64_pos < b64_len) {
        b64[b64_pos++] = '=';
    }
    do {
        b64[b64_pos++] = 0U;
    } while (b64_pos < b64_maxlen);

    return b64;
}