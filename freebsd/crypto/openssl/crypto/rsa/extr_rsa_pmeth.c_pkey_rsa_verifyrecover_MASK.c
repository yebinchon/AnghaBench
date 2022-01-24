#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* pkey; TYPE_3__* data; } ;
struct TYPE_10__ {scalar_t__ pad_mode; unsigned char* tbuf; scalar_t__ md; } ;
struct TYPE_8__ {int /*<<< orphan*/  rsa; } ;
struct TYPE_9__ {TYPE_1__ pkey; } ;
typedef  TYPE_3__ RSA_PKEY_CTX ;
typedef  TYPE_4__ EVP_PKEY_CTX ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  RSA_F_PKEY_RSA_VERIFYRECOVER ; 
 scalar_t__ RSA_PKCS1_PADDING ; 
 int /*<<< orphan*/  RSA_R_ALGORITHM_MISMATCH ; 
 int /*<<< orphan*/  RSA_R_INVALID_DIGEST_LENGTH ; 
 scalar_t__ RSA_X931_PADDING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (size_t,unsigned char const*,unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,size_t*,unsigned char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC8(EVP_PKEY_CTX *ctx,
                                  unsigned char *rout, size_t *routlen,
                                  const unsigned char *sig, size_t siglen)
{
    int ret;
    RSA_PKEY_CTX *rctx = ctx->data;

    if (rctx->md) {
        if (rctx->pad_mode == RSA_X931_PADDING) {
            if (!FUNC7(rctx, ctx))
                return -1;
            ret = FUNC3(siglen, sig,
                                     rctx->tbuf, ctx->pkey->pkey.rsa,
                                     RSA_X931_PADDING);
            if (ret < 1)
                return 0;
            ret--;
            if (rctx->tbuf[ret] != FUNC2(FUNC1(rctx->md))) {
                FUNC4(RSA_F_PKEY_RSA_VERIFYRECOVER,
                       RSA_R_ALGORITHM_MISMATCH);
                return 0;
            }
            if (ret != FUNC0(rctx->md)) {
                FUNC4(RSA_F_PKEY_RSA_VERIFYRECOVER,
                       RSA_R_INVALID_DIGEST_LENGTH);
                return 0;
            }
            if (rout)
                FUNC6(rout, rctx->tbuf, ret);
        } else if (rctx->pad_mode == RSA_PKCS1_PADDING) {
            size_t sltmp;
            ret = FUNC5(FUNC1(rctx->md),
                                 NULL, 0, rout, &sltmp,
                                 sig, siglen, ctx->pkey->pkey.rsa);
            if (ret <= 0)
                return 0;
            ret = sltmp;
        } else {
            return -1;
        }
    } else {
        ret = FUNC3(siglen, sig, rout, ctx->pkey->pkey.rsa,
                                 rctx->pad_mode);
    }
    if (ret < 0)
        return ret;
    *routlen = ret;
    return 1;
}