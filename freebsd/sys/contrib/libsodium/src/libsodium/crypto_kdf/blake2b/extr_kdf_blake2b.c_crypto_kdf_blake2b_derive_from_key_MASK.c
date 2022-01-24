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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int crypto_generichash_blake2b_PERSONALBYTES ; 
 int crypto_generichash_blake2b_SALTBYTES ; 
 int FUNC1 (unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 
 size_t crypto_kdf_blake2b_BYTES_MAX ; 
 size_t crypto_kdf_blake2b_BYTES_MIN ; 
 int crypto_kdf_blake2b_CONTEXTBYTES ; 
 int /*<<< orphan*/  crypto_kdf_blake2b_KEYBYTES ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC4(unsigned char *subkey, size_t subkey_len,
                                       uint64_t subkey_id,
                                       const char ctx[crypto_kdf_blake2b_CONTEXTBYTES],
                                       const unsigned char key[crypto_kdf_blake2b_KEYBYTES])
{
    unsigned char ctx_padded[crypto_generichash_blake2b_PERSONALBYTES];
    unsigned char salt[crypto_generichash_blake2b_SALTBYTES];

    FUNC2(ctx_padded, ctx, crypto_kdf_blake2b_CONTEXTBYTES);
    FUNC3(ctx_padded + crypto_kdf_blake2b_CONTEXTBYTES, 0, sizeof ctx_padded - crypto_kdf_blake2b_CONTEXTBYTES);
    FUNC0(salt, subkey_id);
    FUNC3(salt + 8, 0, (sizeof salt) - 8);
    if (subkey_len < crypto_kdf_blake2b_BYTES_MIN ||
        subkey_len > crypto_kdf_blake2b_BYTES_MAX) {
        errno = EINVAL;
        return -1;
    }
    return FUNC1(subkey, subkey_len,
                                                    NULL, 0,
                                                    key, crypto_kdf_blake2b_KEYBYTES,
                                                    salt, ctx_padded);
}