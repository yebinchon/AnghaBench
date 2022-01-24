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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC8 (int const) ; 
 int /*<<< orphan*/  SM2_F_SM2_COMPUTE_MSG_HASH ; 
 int /*<<< orphan*/  SM2_R_INVALID_DIGEST ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t const,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static BIGNUM *FUNC11(const EVP_MD *digest,
                                    const EC_KEY *key,
                                    const uint8_t *id,
                                    const size_t id_len,
                                    const uint8_t *msg, size_t msg_len)
{
    EVP_MD_CTX *hash = FUNC5();
    const int md_size = FUNC6(digest);
    uint8_t *z = NULL;
    BIGNUM *e = NULL;

    if (md_size < 0) {
        FUNC9(SM2_F_SM2_COMPUTE_MSG_HASH, SM2_R_INVALID_DIGEST);
        goto done;
    }

    z = FUNC8(md_size);
    if (hash == NULL || z == NULL) {
        FUNC9(SM2_F_SM2_COMPUTE_MSG_HASH, ERR_R_MALLOC_FAILURE);
        goto done;
    }

    if (!FUNC10(z, digest, id, id_len, key)) {
        /* SM2err already called */
        goto done;
    }

    if (!FUNC2(hash, digest)
            || !FUNC3(hash, z, md_size)
            || !FUNC3(hash, msg, msg_len)
               /* reuse z buffer to hold H(Z || M) */
            || !FUNC1(hash, z, NULL)) {
        FUNC9(SM2_F_SM2_COMPUTE_MSG_HASH, ERR_R_EVP_LIB);
        goto done;
    }

    e = FUNC0(z, md_size, NULL);
    if (e == NULL)
        FUNC9(SM2_F_SM2_COMPUTE_MSG_HASH, ERR_R_INTERNAL_ERROR);

 done:
    FUNC7(z);
    FUNC4(hash);
    return e;
}