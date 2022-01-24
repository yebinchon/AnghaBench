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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_ASN1_LIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_F_SSL_USE_PRIVATEKEY_ASN1 ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ *,unsigned char const**,long) ; 

int FUNC4(int type, SSL *ssl, const unsigned char *d,
                            long len)
{
    int ret;
    const unsigned char *p;
    EVP_PKEY *pkey;

    p = d;
    if ((pkey = FUNC3(type, NULL, &p, (long)len)) == NULL) {
        FUNC2(SSL_F_SSL_USE_PRIVATEKEY_ASN1, ERR_R_ASN1_LIB);
        return 0;
    }

    ret = FUNC1(ssl, pkey);
    FUNC0(pkey);
    return ret;
}