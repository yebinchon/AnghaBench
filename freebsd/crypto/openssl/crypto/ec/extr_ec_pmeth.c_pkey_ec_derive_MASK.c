#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * co_key; } ;
struct TYPE_12__ {TYPE_4__* peerkey; TYPE_2__* pkey; TYPE_6__* data; } ;
struct TYPE_10__ {int /*<<< orphan*/  ec; } ;
struct TYPE_11__ {TYPE_3__ pkey; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ec; } ;
struct TYPE_9__ {TYPE_1__ pkey; } ;
typedef  TYPE_5__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_6__ EC_PKEY_CTX ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int FUNC0 (unsigned char*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_F_PKEY_EC_DERIVE ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_R_KEYS_NOT_SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen)
{
    int ret;
    size_t outlen;
    const EC_POINT *pubkey = NULL;
    EC_KEY *eckey;
    EC_PKEY_CTX *dctx = ctx->data;
    if (!ctx->pkey || !ctx->peerkey) {
        FUNC4(EC_F_PKEY_EC_DERIVE, EC_R_KEYS_NOT_SET);
        return 0;
    }

    eckey = dctx->co_key ? dctx->co_key : ctx->pkey->pkey.ec;

    if (!key) {
        const EC_GROUP *group;
        group = FUNC2(eckey);
        *keylen = (FUNC1(group) + 7) / 8;
        return 1;
    }
    pubkey = FUNC3(ctx->peerkey->pkey.ec);

    /*
     * NB: unlike PKCS#3 DH, if *outlen is less than maximum size this is not
     * an error, the result is truncated.
     */

    outlen = *keylen;

    ret = FUNC0(key, outlen, pubkey, eckey, 0);
    if (ret <= 0)
        return 0;
    *keylen = ret;
    return 1;
}