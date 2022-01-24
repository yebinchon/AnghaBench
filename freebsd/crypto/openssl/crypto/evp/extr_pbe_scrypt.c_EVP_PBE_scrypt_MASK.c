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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_F_EVP_PBE_SCRYPT ; 
 int /*<<< orphan*/  EVP_R_MEMORY_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  EVP_R_PBKDF2_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INT_MAX ; 
 int LOG2_UINT64_MAX ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t) ; 
 unsigned char* FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (char const*,size_t,unsigned char const*,int,int,int /*<<< orphan*/ ,size_t,unsigned char*) ; 
 int SCRYPT_MAX_MEM ; 
 int SCRYPT_PR_MAX ; 
 int SIZE_MAX ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(const char *pass, size_t passlen,
                   const unsigned char *salt, size_t saltlen,
                   uint64_t N, uint64_t r, uint64_t p, uint64_t maxmem,
                   unsigned char *key, size_t keylen)
{
    int rv = 0;
    unsigned char *B;
    uint32_t *X, *V, *T;
    uint64_t i, Blen, Vlen;

    /* Sanity check parameters */
    /* initial check, r,p must be non zero, N >= 2 and a power of 2 */
    if (r == 0 || p == 0 || N < 2 || (N & (N - 1)))
        return 0;
    /* Check p * r < SCRYPT_PR_MAX avoiding overflow */
    if (p > SCRYPT_PR_MAX / r) {
        FUNC1(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
        return 0;
    }

    /*
     * Need to check N: if 2^(128 * r / 8) overflows limit this is
     * automatically satisfied since N <= UINT64_MAX.
     */

    if (16 * r <= LOG2_UINT64_MAX) {
        if (N >= (((uint64_t)1) << (16 * r))) {
            FUNC1(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
            return 0;
        }
    }

    /* Memory checks: check total allocated buffer size fits in uint64_t */

    /*
     * B size in section 5 step 1.S
     * Note: we know p * 128 * r < UINT64_MAX because we already checked
     * p * r < SCRYPT_PR_MAX
     */
    Blen = p * 128 * r;
    /*
     * Yet we pass it as integer to PKCS5_PBKDF2_HMAC... [This would
     * have to be revised when/if PKCS5_PBKDF2_HMAC accepts size_t.]
     */
    if (Blen > INT_MAX) {
        FUNC1(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
        return 0;
    }

    /*
     * Check 32 * r * (N + 2) * sizeof(uint32_t) fits in uint64_t
     * This is combined size V, X and T (section 4)
     */
    i = UINT64_MAX / (32 * sizeof(uint32_t));
    if (N + 2 > i / r) {
        FUNC1(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
        return 0;
    }
    Vlen = 32 * r * (N + 2) * sizeof(uint32_t);

    /* check total allocated size fits in uint64_t */
    if (Blen > UINT64_MAX - Vlen) {
        FUNC1(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
        return 0;
    }

    if (maxmem == 0)
        maxmem = SCRYPT_MAX_MEM;

    /* Check that the maximum memory doesn't exceed a size_t limits */
    if (maxmem > SIZE_MAX)
        maxmem = SIZE_MAX;

    if (Blen + Vlen > maxmem) {
        FUNC1(EVP_F_EVP_PBE_SCRYPT, EVP_R_MEMORY_LIMIT_EXCEEDED);
        return 0;
    }

    /* If no key return to indicate parameters are OK */
    if (key == NULL)
        return 1;

    B = FUNC3((size_t)(Blen + Vlen));
    if (B == NULL) {
        FUNC1(EVP_F_EVP_PBE_SCRYPT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    X = (uint32_t *)(B + Blen);
    T = X + 32 * r;
    V = T + 32 * r;
    if (FUNC4(pass, passlen, salt, saltlen, 1, FUNC0(),
                          (int)Blen, B) == 0)
        goto err;

    for (i = 0; i < p; i++)
        FUNC5(B + 128 * r * i, r, N, X, T, V);

    if (FUNC4(pass, passlen, B, (int)Blen, 1, FUNC0(),
                          keylen, key) == 0)
        goto err;
    rv = 1;
 err:
    if (rv == 0)
        FUNC1(EVP_F_EVP_PBE_SCRYPT, EVP_R_PBKDF2_ERROR);

    FUNC2(B, (size_t)(Blen + Vlen));
    return rv;
}