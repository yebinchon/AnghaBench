#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {TYPE_2__* pkey; TYPE_3__* data; } ;
struct TYPE_8__ {int /*<<< orphan*/  id_len; int /*<<< orphan*/  id; int /*<<< orphan*/  id_set; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ec; } ;
struct TYPE_7__ {TYPE_1__ pkey; } ;
typedef  TYPE_3__ SM2_PKEY_CTX ;
typedef  TYPE_4__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  SM2_F_PKEY_SM2_DIGEST_CUSTOM ; 
 int /*<<< orphan*/  SM2_R_ID_NOT_SET ; 
 int /*<<< orphan*/  SM2_R_INVALID_DIGEST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx)
{
    uint8_t z[EVP_MAX_MD_SIZE];
    SM2_PKEY_CTX *smctx = ctx->data;
    EC_KEY *ec = ctx->pkey->pkey.ec;
    const EVP_MD *md = FUNC1(mctx);
    int mdlen = FUNC2(md);

    if (!smctx->id_set) {
        /*
         * An ID value must be set. The specifications are not clear whether a
         * NULL is allowed. We only allow it if set explicitly for maximum
         * flexibility.
         */
        FUNC3(SM2_F_PKEY_SM2_DIGEST_CUSTOM, SM2_R_ID_NOT_SET);
        return 0;
    }

    if (mdlen < 0) {
        FUNC3(SM2_F_PKEY_SM2_DIGEST_CUSTOM, SM2_R_INVALID_DIGEST);
        return 0;
    }

    /* get hashed prefix 'z' of tbs message */
    if (!FUNC4(z, md, smctx->id, smctx->id_len, ec))
        return 0;

    return FUNC0(mctx, z, (size_t)mdlen);
}