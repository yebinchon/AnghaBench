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
 int /*<<< orphan*/  PEM_F_DO_PK8PKEY_FP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/  const*,char*,int,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC4(FILE *fp, EVP_PKEY *x, int isder, int nid,
                         const EVP_CIPHER *enc, char *kstr, int klen,
                         pem_password_cb *cb, void *u)
{
    BIO *bp;
    int ret;

    if ((bp = FUNC1(fp, BIO_NOCLOSE)) == NULL) {
        FUNC2(PEM_F_DO_PK8PKEY_FP, ERR_R_BUF_LIB);
        return 0;
    }
    ret = FUNC3(bp, x, isder, nid, enc, kstr, klen, cb, u);
    FUNC0(bp);
    return ret;
}