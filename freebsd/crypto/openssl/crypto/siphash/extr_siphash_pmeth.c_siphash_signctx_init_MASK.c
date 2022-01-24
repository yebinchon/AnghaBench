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
struct TYPE_3__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ SIPHASH_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_NO_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,size_t*) ; 
 size_t SIPHASH_KEY_SIZE ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int_update ; 

__attribute__((used)) static int FUNC6(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx)
{
    SIPHASH_PKEY_CTX *pctx = FUNC3(ctx);
    const unsigned char* key;
    size_t len;

    key = FUNC4(FUNC2(ctx), &len);
    if (key == NULL || len != SIPHASH_KEY_SIZE)
        return 0;
    FUNC0(mctx, EVP_MD_CTX_FLAG_NO_INIT);
    FUNC1(mctx, int_update);
    return FUNC5(&pctx->ctx, key, 0, 0);
}