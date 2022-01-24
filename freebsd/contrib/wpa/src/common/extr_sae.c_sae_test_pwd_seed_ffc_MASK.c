#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sae_data {TYPE_2__* tmp; } ;
struct crypto_bignum {int dummy; } ;
typedef  int /*<<< orphan*/  exp ;
struct TYPE_4__ {int prime_len; int /*<<< orphan*/  prime; int /*<<< orphan*/  order; TYPE_1__* dh; } ;
struct TYPE_3__ {scalar_t__ safe_prime; int /*<<< orphan*/  prime; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SAE_MAX_PRIME_LEN ; 
 int SHA256_MAC_LEN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_bignum*,int) ; 
 scalar_t__ FUNC5 (struct crypto_bignum*,int /*<<< orphan*/ ,struct crypto_bignum*) ; 
 int FUNC6 (struct crypto_bignum*,struct crypto_bignum*,int /*<<< orphan*/ ,struct crypto_bignum*) ; 
 struct crypto_bignum* FUNC7 (int*,int) ; 
 int FUNC8 (struct crypto_bignum*) ; 
 int FUNC9 (struct crypto_bignum*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct crypto_bignum*,struct crypto_bignum*) ; 
 scalar_t__ FUNC11 (int const*,int,char*,int /*<<< orphan*/ ,int,int*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int const*,int) ; 

__attribute__((used)) static int FUNC13(struct sae_data *sae, const u8 *pwd_seed,
				 struct crypto_bignum *pwe)
{
	u8 pwd_value[SAE_MAX_PRIME_LEN];
	size_t bits = sae->tmp->prime_len * 8;
	u8 exp[1];
	struct crypto_bignum *a, *b = NULL;
	int res, is_val;
	u8 pwd_value_valid;

	FUNC12(MSG_DEBUG, "SAE: pwd-seed", pwd_seed, SHA256_MAC_LEN);

	/* pwd-value = KDF-z(pwd-seed, "SAE Hunting and Pecking", p) */
	if (FUNC11(pwd_seed, SHA256_MAC_LEN, "SAE Hunting and Pecking",
			    sae->tmp->dh->prime, sae->tmp->prime_len, pwd_value,
			    bits) < 0)
		return -1;
	FUNC12(MSG_DEBUG, "SAE: pwd-value", pwd_value,
			sae->tmp->prime_len);

	/* Check whether pwd-value < p */
	res = FUNC2(pwd_value, sae->tmp->dh->prime,
				sae->tmp->prime_len);
	/* pwd-value >= p is invalid, so res is < 0 for the valid cases and
	 * the negative sign can be used to fill the mask for constant time
	 * selection */
	pwd_value_valid = FUNC0(res);

	/* If pwd-value >= p, force pwd-value to be < p and perform the
	 * calculations anyway to hide timing difference. The derived PWE will
	 * be ignored in that case. */
	pwd_value[0] = FUNC3(pwd_value_valid, pwd_value[0], 0);

	/* PWE = pwd-value^((p-1)/r) modulo p */

	res = -1;
	a = FUNC7(pwd_value, sae->tmp->prime_len);
	if (!a)
		goto fail;

	/* This is an optimization based on the used group that does not depend
	 * on the password in any way, so it is fine to use separate branches
	 * for this step without constant time operations. */
	if (sae->tmp->dh->safe_prime) {
		/*
		 * r = (p-1)/2 for the group used here, so this becomes:
		 * PWE = pwd-value^2 modulo p
		 */
		exp[0] = 2;
		b = FUNC7(exp, sizeof(exp));
	} else {
		/* Calculate exponent: (p-1)/r */
		exp[0] = 1;
		b = FUNC7(exp, sizeof(exp));
		if (b == NULL ||
		    FUNC10(sae->tmp->prime, b, b) < 0 ||
		    FUNC5(b, sae->tmp->order, b) < 0)
			goto fail;
	}

	if (!b)
		goto fail;

	res = FUNC6(a, b, sae->tmp->prime, pwe);
	if (res < 0)
		goto fail;

	/* There were no fatal errors in calculations, so determine the return
	 * value using constant time operations. We get here for number of
	 * invalid cases which are cleared here after having performed all the
	 * computation. PWE is valid if pwd-value was less than prime and
	 * PWE > 1. Start with pwd-value check first and then use constant time
	 * operations to clear res to 0 if PWE is 0 or 1.
	 */
	res = FUNC3(pwd_value_valid, 1, 0);
	is_val = FUNC9(pwe);
	res = FUNC3(FUNC1(is_val), res, 0);
	is_val = FUNC8(pwe);
	res = FUNC3(FUNC1(is_val), res, 0);

fail:
	FUNC4(a, 1);
	FUNC4(b, 1);
	return res;
}