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
typedef  int /*<<< orphan*/  RSA_PSS_PARAMS ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static RSA_PSS_PARAMS *FUNC8(EVP_PKEY_CTX *pkctx)
{
    const EVP_MD *sigmd, *mgf1md;
    EVP_PKEY *pk = FUNC1(pkctx);
    int saltlen;

    if (FUNC4(pkctx, &sigmd) <= 0)
        return NULL;
    if (FUNC2(pkctx, &mgf1md) <= 0)
        return NULL;
    if (!FUNC3(pkctx, &saltlen))
        return NULL;
    if (saltlen == -1) {
        saltlen = FUNC0(sigmd);
    } else if (saltlen == -2 || saltlen == -3) {
        saltlen = FUNC6(pk) - FUNC0(sigmd) - 2;
        if ((FUNC5(pk) & 0x7) == 1)
            saltlen--;
        if (saltlen < 0)
            return NULL;
    }

    return FUNC7(sigmd, mgf1md, saltlen);
}