#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int mode; int /*<<< orphan*/  info_len; int /*<<< orphan*/  info; int /*<<< orphan*/  key_len; int /*<<< orphan*/ * key; int /*<<< orphan*/ * md; int /*<<< orphan*/  salt_len; int /*<<< orphan*/  salt; } ;
typedef  TYPE_1__ HKDF_PKEY_CTX ;
typedef  TYPE_2__ EVP_PKEY_CTX ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
#define  EVP_PKEY_HKDEF_MODE_EXPAND_ONLY 130 
#define  EVP_PKEY_HKDEF_MODE_EXTRACT_AND_EXPAND 129 
#define  EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  KDF_F_PKEY_HKDF_DERIVE ; 
 int /*<<< orphan*/  KDF_R_MISSING_KEY ; 
 int /*<<< orphan*/  KDF_R_MISSING_MESSAGE_DIGEST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY_CTX *ctx, unsigned char *key,
                            size_t *keylen)
{
    HKDF_PKEY_CTX *kctx = ctx->data;

    if (kctx->md == NULL) {
        FUNC4(KDF_F_PKEY_HKDF_DERIVE, KDF_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    if (kctx->key == NULL) {
        FUNC4(KDF_F_PKEY_HKDF_DERIVE, KDF_R_MISSING_KEY);
        return 0;
    }

    switch (kctx->mode) {
    case EVP_PKEY_HKDEF_MODE_EXTRACT_AND_EXPAND:
        return FUNC1(kctx->md, kctx->salt, kctx->salt_len, kctx->key,
                    kctx->key_len, kctx->info, kctx->info_len, key,
                    *keylen) != NULL;

    case EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY:
        if (key == NULL) {
            *keylen = FUNC0(kctx->md);
            return 1;
        }
        return FUNC3(kctx->md, kctx->salt, kctx->salt_len, kctx->key,
                            kctx->key_len, key, keylen) != NULL;

    case EVP_PKEY_HKDEF_MODE_EXPAND_ONLY:
        return FUNC2(kctx->md, kctx->key, kctx->key_len, kctx->info,
                           kctx->info_len, key, *keylen) != NULL;

    default:
        return 0;
    }
}