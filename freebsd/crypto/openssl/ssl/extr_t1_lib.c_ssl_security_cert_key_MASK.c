#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(SSL *s, SSL_CTX *ctx, X509 *x, int op)
{
    int secbits = -1;
    EVP_PKEY *pkey = FUNC1(x);
    if (pkey) {
        /*
         * If no parameters this will return -1 and fail using the default
         * security callback for any non-zero security level. This will
         * reject keys which omit parameters but this only affects DSA and
         * omission of parameters is never (?) done in practice.
         */
        secbits = FUNC0(pkey);
    }
    if (s)
        return FUNC3(s, op, secbits, 0, x);
    else
        return FUNC2(ctx, op, secbits, 0, x);
}