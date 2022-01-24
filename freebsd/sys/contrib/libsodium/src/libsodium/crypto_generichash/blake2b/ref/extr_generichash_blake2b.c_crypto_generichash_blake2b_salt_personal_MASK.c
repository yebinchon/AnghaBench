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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 size_t BLAKE2B_KEYBYTES ; 
 size_t BLAKE2B_OUTBYTES ; 
 unsigned long long UINT64_MAX ; 
 size_t UINT8_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,unsigned char const*) ; 

int
FUNC2(
    unsigned char *out, size_t outlen, const unsigned char *in,
    unsigned long long inlen, const unsigned char *key, size_t keylen,
    const unsigned char *salt, const unsigned char *personal)
{
    if (outlen <= 0U || outlen > BLAKE2B_OUTBYTES ||
        keylen > BLAKE2B_KEYBYTES || inlen > UINT64_MAX) {
        return -1;
    }
    FUNC0(outlen <= UINT8_MAX);
    FUNC0(keylen <= UINT8_MAX);

    return FUNC1((uint8_t *) out, in, key, (uint8_t) outlen,
                                 (uint64_t) inlen, (uint8_t) keylen, salt,
                                 personal);
}