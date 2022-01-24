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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_F_PKEY_DSA_CTRL_STR ; 
 int /*<<< orphan*/  DSA_R_INVALID_DIGEST_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_DSA_PARAMGEN_MD ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_DSA_PARAMGEN_Q_BITS ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  EVP_PKEY_DSA ; 
 int /*<<< orphan*/  EVP_PKEY_OP_PARAMGEN ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(EVP_PKEY_CTX *ctx,
                             const char *type, const char *value)
{
    if (FUNC5(type, "dsa_paramgen_bits") == 0) {
        int nbits;
        nbits = FUNC4(value);
        return FUNC2(ctx, nbits);
    }
    if (FUNC5(type, "dsa_paramgen_q_bits") == 0) {
        int qbits = FUNC4(value);
        return FUNC1(ctx, EVP_PKEY_DSA, EVP_PKEY_OP_PARAMGEN,
                                 EVP_PKEY_CTRL_DSA_PARAMGEN_Q_BITS, qbits,
                                 NULL);
    }
    if (FUNC5(type, "dsa_paramgen_md") == 0) {
        const EVP_MD *md = FUNC3(value);

        if (md == NULL) {
            FUNC0(DSA_F_PKEY_DSA_CTRL_STR, DSA_R_INVALID_DIGEST_TYPE);
            return 0;
        }
        return FUNC1(ctx, EVP_PKEY_DSA, EVP_PKEY_OP_PARAMGEN,
                                 EVP_PKEY_CTRL_DSA_PARAMGEN_MD, 0,
                                 (void *)md);
    }
    return -2;
}