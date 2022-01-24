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
typedef  int /*<<< orphan*/  i2d_of_void ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/  const*,unsigned char*,int,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  PEM_F_PEM_ASN1_WRITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(i2d_of_void *i2d, const char *name, FILE *fp,
                   void *x, const EVP_CIPHER *enc, unsigned char *kstr,
                   int klen, pem_password_cb *callback, void *u)
{
    BIO *b;
    int ret;

    if ((b = FUNC1(FUNC2())) == NULL) {
        FUNC5(PEM_F_PEM_ASN1_WRITE, ERR_R_BUF_LIB);
        return 0;
    }
    FUNC3(b, fp, BIO_NOCLOSE);
    ret = FUNC4(i2d, name, b, x, enc, kstr, klen, callback, u);
    FUNC0(b);
    return ret;
}