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
struct TYPE_3__ {int /*<<< orphan*/  ktmp; } ;
typedef  TYPE_1__ POLY1305_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    ASN1_OCTET_STRING *key;
    POLY1305_PKEY_CTX *pctx = FUNC2(ctx);

    if (FUNC1(&pctx->ktmp) == NULL)
        return 0;
    key = FUNC0(&pctx->ktmp);
    if (key == NULL)
        return 0;
    return FUNC3(pkey, key);
}