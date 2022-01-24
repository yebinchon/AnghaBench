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
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  ECDSA_SIG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SM2_F_SM2_SIGN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(const unsigned char *dgst, int dgstlen,
             unsigned char *sig, unsigned int *siglen, EC_KEY *eckey)
{
    BIGNUM *e = NULL;
    ECDSA_SIG *s = NULL;
    int sigleni;
    int ret = -1;

    e = FUNC0(dgst, dgstlen, NULL);
    if (e == NULL) {
       FUNC3(SM2_F_SM2_SIGN, ERR_R_BN_LIB);
       goto done;
    }

    s = FUNC5(eckey, e);

    sigleni = FUNC4(s, &sig);
    if (sigleni < 0) {
       FUNC3(SM2_F_SM2_SIGN, ERR_R_INTERNAL_ERROR);
       goto done;
    }
    *siglen = (unsigned int)sigleni;

    ret = 1;

 done:
    FUNC2(s);
    FUNC1(e);
    return ret;
}