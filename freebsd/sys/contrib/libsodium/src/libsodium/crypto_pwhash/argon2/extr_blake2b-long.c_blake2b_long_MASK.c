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
typedef  unsigned char const uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  outlen_bytes ;
typedef  int /*<<< orphan*/  crypto_generichash_blake2b_state ;
typedef  int /*<<< orphan*/  blake_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t UINT32_MAX ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,size_t,unsigned char const*,size_t,int /*<<< orphan*/ *,unsigned int) ; 
 size_t crypto_generichash_blake2b_BYTES_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

int
FUNC8(void *pout, size_t outlen, const void *in, size_t inlen)
{
    uint8_t *out = (uint8_t *) pout;
    crypto_generichash_blake2b_state blake_state;
    uint8_t outlen_bytes[4 /* sizeof(uint32_t) */] = { 0 };
    int     ret = -1;

    if (outlen > UINT32_MAX) {
        goto fail; /* LCOV_EXCL_LINE */
    }

    /* Ensure little-endian byte order! */
    FUNC0(outlen_bytes, (uint32_t) outlen);

#define TRY(statement)   \
    do {                 \
        ret = statement; \
        if (ret < 0) {   \
            goto fail;   \
        }                \
    } while ((void) 0, 0)

    if (outlen <= crypto_generichash_blake2b_BYTES_MAX) {
        TRY(FUNC4(&blake_state, NULL, 0U, outlen));
        TRY(FUNC5(&blake_state, outlen_bytes,
                                              sizeof(outlen_bytes)));
        TRY(FUNC5(
            &blake_state, (const unsigned char *) in, inlen));
        TRY(FUNC3(&blake_state, out, outlen));
    } else {
        uint32_t toproduce;
        uint8_t  out_buffer[crypto_generichash_blake2b_BYTES_MAX];
        uint8_t  in_buffer[crypto_generichash_blake2b_BYTES_MAX];
        TRY(FUNC4(
            &blake_state, NULL, 0U, crypto_generichash_blake2b_BYTES_MAX));
        TRY(FUNC5(&blake_state, outlen_bytes,
                                              sizeof(outlen_bytes)));
        TRY(FUNC5(
            &blake_state, (const unsigned char *) in, inlen));
        TRY(FUNC3(
            &blake_state, out_buffer, crypto_generichash_blake2b_BYTES_MAX));
        FUNC6(out, out_buffer, crypto_generichash_blake2b_BYTES_MAX / 2);
        out += crypto_generichash_blake2b_BYTES_MAX / 2;
        toproduce =
            (uint32_t) outlen - crypto_generichash_blake2b_BYTES_MAX / 2;

        while (toproduce > crypto_generichash_blake2b_BYTES_MAX) {
            FUNC6(in_buffer, out_buffer, crypto_generichash_blake2b_BYTES_MAX);
            TRY(FUNC2(
                out_buffer, crypto_generichash_blake2b_BYTES_MAX, in_buffer,
                crypto_generichash_blake2b_BYTES_MAX, NULL, 0U));
            FUNC6(out, out_buffer, crypto_generichash_blake2b_BYTES_MAX / 2);
            out += crypto_generichash_blake2b_BYTES_MAX / 2;
            toproduce -= crypto_generichash_blake2b_BYTES_MAX / 2;
        }

        FUNC6(in_buffer, out_buffer, crypto_generichash_blake2b_BYTES_MAX);
        TRY(FUNC2(out_buffer, toproduce, in_buffer,
                                       crypto_generichash_blake2b_BYTES_MAX,
                                       NULL, 0U));
        FUNC6(out, out_buffer, toproduce);
    }
fail:
    FUNC7(&blake_state, sizeof(blake_state));
    return ret;
#undef TRY
}