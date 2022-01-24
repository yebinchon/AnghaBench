#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  maskHash; int /*<<< orphan*/  maskGenAlgorithm; int /*<<< orphan*/  hashAlgorithm; int /*<<< orphan*/ * saltLength; } ;
typedef  TYPE_1__ RSA_PSS_PARAMS ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

RSA_PSS_PARAMS *FUNC6(const EVP_MD *sigmd,
                                      const EVP_MD *mgf1md, int saltlen)
{
    RSA_PSS_PARAMS *pss = FUNC3();

    if (pss == NULL)
        goto err;
    if (saltlen != 20) {
        pss->saltLength = FUNC0();
        if (pss->saltLength == NULL)
            goto err;
        if (!FUNC1(pss->saltLength, saltlen))
            goto err;
    }
    if (!FUNC4(&pss->hashAlgorithm, sigmd))
        goto err;
    if (mgf1md == NULL)
        mgf1md = sigmd;
    if (!FUNC5(&pss->maskGenAlgorithm, mgf1md))
        goto err;
    if (!FUNC4(&pss->maskHash, mgf1md))
        goto err;
    return pss;
 err:
    FUNC2(pss);
    return NULL;
}