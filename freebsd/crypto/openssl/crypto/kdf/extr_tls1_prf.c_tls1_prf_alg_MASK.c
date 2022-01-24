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
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 () ; 
 int /*<<< orphan*/  const* FUNC2 () ; 
 int /*<<< orphan*/  KDF_F_TLS1_PRF_ALG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NID_md5_sha1 ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,size_t) ; 
 unsigned char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC7(const EVP_MD *md,
                        const unsigned char *sec, size_t slen,
                        const unsigned char *seed, size_t seed_len,
                        unsigned char *out, size_t olen)
{

    if (FUNC0(md) == NID_md5_sha1) {
        size_t i;
        unsigned char *tmp;
        if (!FUNC6(FUNC1(), sec, slen/2 + (slen & 1),
                         seed, seed_len, out, olen))
            return 0;

        if ((tmp = FUNC5(olen)) == NULL) {
            FUNC3(KDF_F_TLS1_PRF_ALG, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        if (!FUNC6(FUNC2(), sec + slen/2, slen/2 + (slen & 1),
                         seed, seed_len, tmp, olen)) {
            FUNC4(tmp, olen);
            return 0;
        }
        for (i = 0; i < olen; i++)
            out[i] ^= tmp[i];
        FUNC4(tmp, olen);
        return 1;
    }
    if (!FUNC6(md, sec, slen, seed, seed_len, out, olen))
        return 0;

    return 1;
}