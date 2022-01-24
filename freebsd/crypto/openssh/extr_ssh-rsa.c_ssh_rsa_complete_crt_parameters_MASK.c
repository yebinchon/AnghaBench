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
struct sshkey {int /*<<< orphan*/ * rsa; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ KEY_RSA ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(struct sshkey *key, const BIGNUM *iqmp)
{
	const BIGNUM *rsa_p, *rsa_q, *rsa_d;
	BIGNUM *aux = NULL, *d_consttime = NULL;
	BIGNUM *rsa_dmq1 = NULL, *rsa_dmp1 = NULL, *rsa_iqmp = NULL;
	BN_CTX *ctx = NULL;
	int r;

	if (key == NULL || key->rsa == NULL ||
	    FUNC12(key->type) != KEY_RSA)
		return SSH_ERR_INVALID_ARGUMENT;

	FUNC10(key->rsa, NULL, NULL, &rsa_d);
	FUNC9(key->rsa, &rsa_p, &rsa_q);

	if ((ctx = FUNC1()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((aux = FUNC5()) == NULL ||
	    (rsa_dmq1 = FUNC5()) == NULL ||
	    (rsa_dmp1 = FUNC5()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((d_consttime = FUNC3(rsa_d)) == NULL ||
	    (rsa_iqmp = FUNC3(iqmp)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	FUNC6(aux, BN_FLG_CONSTTIME);
	FUNC6(d_consttime, BN_FLG_CONSTTIME);

	if ((FUNC7(aux, rsa_q, FUNC8()) == 0) ||
	    (FUNC4(rsa_dmq1, d_consttime, aux, ctx) == 0) ||
	    (FUNC7(aux, rsa_p, FUNC8()) == 0) ||
	    (FUNC4(rsa_dmp1, d_consttime, aux, ctx) == 0)) {
		r = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	if (!FUNC11(key->rsa, rsa_dmp1, rsa_dmq1, rsa_iqmp)) {
		r = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	rsa_dmp1 = rsa_dmq1 = rsa_iqmp = NULL; /* transferred */
	/* success */
	r = 0;
 out:
	FUNC2(aux);
	FUNC2(d_consttime);
	FUNC2(rsa_dmp1);
	FUNC2(rsa_dmq1);
	FUNC2(rsa_iqmp);
	FUNC0(ctx);
	return r;
}