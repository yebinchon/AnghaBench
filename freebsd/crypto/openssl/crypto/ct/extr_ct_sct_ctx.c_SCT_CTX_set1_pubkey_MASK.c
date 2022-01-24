#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_PUBKEY ;
struct TYPE_3__ {int /*<<< orphan*/ * pkey; int /*<<< orphan*/  pkeyhashlen; int /*<<< orphan*/  pkeyhash; } ;
typedef  TYPE_1__ SCT_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(SCT_CTX *sctx, X509_PUBKEY *pubkey)
{
    EVP_PKEY *pkey = FUNC1(pubkey);

    if (pkey == NULL)
        return 0;

    if (!FUNC2(pubkey, &sctx->pkeyhash, &sctx->pkeyhashlen)) {
        FUNC0(pkey);
        return 0;
    }

    FUNC0(sctx->pkey);
    sctx->pkey = pkey;
    return 1;
}