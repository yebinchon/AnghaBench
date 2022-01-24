#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_8__ {TYPE_1__ pkey; } ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  CMAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_F_EVP_PKEY_NEW_CMAC_KEY ; 
 int /*<<< orphan*/  EVP_PKEY_CMAC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  EVP_R_KEY_SETUP_FAILED ; 
 int /*<<< orphan*/  EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

EVP_PKEY *FUNC7(ENGINE *e, const unsigned char *priv,
                                size_t len, const EVP_CIPHER *cipher)
{
#ifndef OPENSSL_NO_CMAC
    EVP_PKEY *ret = FUNC4();
    CMAC_CTX *cmctx = FUNC1();

    if (ret == NULL
            || cmctx == NULL
            || !FUNC6(ret, e, EVP_PKEY_CMAC, NULL, -1)) {
        /* EVPerr already called */
        goto err;
    }

    if (!FUNC2(cmctx, priv, len, cipher, e)) {
        FUNC5(EVP_F_EVP_PKEY_NEW_CMAC_KEY, EVP_R_KEY_SETUP_FAILED);
        goto err;
    }

    ret->pkey.ptr = cmctx;
    return ret;

 err:
    FUNC3(ret);
    FUNC0(cmctx);
    return NULL;
#else
    EVPerr(EVP_F_EVP_PKEY_NEW_CMAC_KEY,
           EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
    return NULL;
#endif
}