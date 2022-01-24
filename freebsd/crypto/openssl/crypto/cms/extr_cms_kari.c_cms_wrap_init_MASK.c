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
struct TYPE_3__ {int /*<<< orphan*/ * ctx; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  TYPE_1__ CMS_KeyAgreeRecipientInfo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ EVP_CIPH_WRAP_MODE ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ NID_des_ede3_cbc ; 

__attribute__((used)) static int FUNC9(CMS_KeyAgreeRecipientInfo *kari,
                         const EVP_CIPHER *cipher)
{
    EVP_CIPHER_CTX *ctx = kari->ctx;
    const EVP_CIPHER *kekcipher;
    int keylen = FUNC2(cipher);
    /* If a suitable wrap algorithm is already set nothing to do */
    kekcipher = FUNC0(ctx);

    if (kekcipher) {
        if (FUNC1(ctx) != EVP_CIPH_WRAP_MODE)
            return 0;
        return 1;
    }
    /*
     * Pick a cipher based on content encryption cipher. If it is DES3 use
     * DES3 wrap otherwise use AES wrap similar to key size.
     */
#ifndef OPENSSL_NO_DES
    if (FUNC3(cipher) == NID_des_ede3_cbc)
        kekcipher = FUNC8();
    else
#endif
    if (keylen <= 16)
        kekcipher = FUNC5();
    else if (keylen <= 24)
        kekcipher = FUNC6();
    else
        kekcipher = FUNC7();
    return FUNC4(ctx, kekcipher, NULL, NULL, NULL);
}