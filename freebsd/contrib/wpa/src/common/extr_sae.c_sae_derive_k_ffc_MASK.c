#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sae_data {TYPE_1__* tmp; int /*<<< orphan*/  peer_commit_scalar; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  prime_len; int /*<<< orphan*/  prime; int /*<<< orphan*/  sae_rand; int /*<<< orphan*/  peer_commit_element_ffc; struct crypto_bignum* pwe_ffc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SAE_MAX_PRIME_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_bignum*,int) ; 
 scalar_t__ FUNC1 (struct crypto_bignum*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_bignum*) ; 
 struct crypto_bignum* FUNC2 () ; 
 scalar_t__ FUNC3 (struct crypto_bignum*) ; 
 scalar_t__ FUNC4 (struct crypto_bignum*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_bignum*) ; 
 scalar_t__ FUNC5 (struct crypto_bignum*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct sae_data *sae, u8 *k)
{
	struct crypto_bignum *K;
	int ret = -1;

	K = FUNC2();
	if (K == NULL)
		goto fail;

	/*
	 * K = scalar-op(rand, (elem-op(scalar-op(peer-commit-scalar, PWE),
	 *                                        PEER-COMMIT-ELEMENT)))
	 * If K is identity element (one), reject.
	 * k = F(K) (= x coordinate)
	 */

	if (FUNC1(sae->tmp->pwe_ffc, sae->peer_commit_scalar,
				  sae->tmp->prime, K) < 0 ||
	    FUNC4(K, sae->tmp->peer_commit_element_ffc,
				 sae->tmp->prime, K) < 0 ||
	    FUNC1(K, sae->tmp->sae_rand, sae->tmp->prime, K) < 0
	    ||
	    FUNC3(K) ||
	    FUNC5(K, k, SAE_MAX_PRIME_LEN, sae->tmp->prime_len) <
	    0) {
		FUNC7(MSG_DEBUG, "SAE: Failed to calculate K and k");
		goto fail;
	}

	FUNC6(MSG_DEBUG, "SAE: k", k, sae->tmp->prime_len);

	ret = 0;
fail:
	FUNC0(K, 1);
	return ret;
}