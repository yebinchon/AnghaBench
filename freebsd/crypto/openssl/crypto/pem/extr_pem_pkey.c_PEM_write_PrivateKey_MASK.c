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
typedef  int /*<<< orphan*/  pem_password_cb ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int /*<<< orphan*/  PEM_F_PEM_WRITE_PRIVATEKEY ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char*,int,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(FILE *fp, EVP_PKEY *x, const EVP_CIPHER *enc,
                         unsigned char *kstr, int klen,
                         pem_password_cb *cb, void *u)
{
    BIO *b;
    int ret;

    if ((b = FUNC1(fp, BIO_NOCLOSE)) == NULL) {
        FUNC3(PEM_F_PEM_WRITE_PRIVATEKEY, ERR_R_BUF_LIB);
        return 0;
    }
    ret = FUNC2(b, x, enc, kstr, klen, cb, u);
    FUNC0(b);
    return ret;
}