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
struct TYPE_3__ {int /*<<< orphan*/  cert; } ;
typedef  TYPE_1__ SSL_CTX ;
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_F_SSL_CTX_USE_RSAPRIVATEKEY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(SSL_CTX *ctx, RSA *rsa)
{
    int ret;
    EVP_PKEY *pkey;

    if (rsa == NULL) {
        FUNC5(SSL_F_SSL_CTX_USE_RSAPRIVATEKEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if ((pkey = FUNC2()) == NULL) {
        FUNC5(SSL_F_SSL_CTX_USE_RSAPRIVATEKEY, ERR_R_EVP_LIB);
        return 0;
    }

    FUNC4(rsa);
    if (FUNC0(pkey, rsa) <= 0) {
        FUNC3(rsa);
        FUNC1(pkey);
        return 0;
    }

    ret = FUNC6(ctx->cert, pkey);
    FUNC1(pkey);
    return ret;
}