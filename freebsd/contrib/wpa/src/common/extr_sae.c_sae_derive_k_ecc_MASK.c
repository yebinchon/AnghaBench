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
struct crypto_ec_point {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  prime_len; int /*<<< orphan*/  ec; int /*<<< orphan*/  sae_rand; int /*<<< orphan*/  peer_commit_element_ecc; struct crypto_ec_point* pwe_ecc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct crypto_ec_point*,int /*<<< orphan*/ ,struct crypto_ec_point*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ec_point*,int) ; 
 struct crypto_ec_point* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct crypto_ec_point*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct crypto_ec_point*,int /*<<< orphan*/ ,struct crypto_ec_point*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct crypto_ec_point*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct sae_data *sae, u8 *k)
{
	struct crypto_ec_point *K;
	int ret = -1;

	K = FUNC2(sae->tmp->ec);
	if (K == NULL)
		goto fail;

	/*
	 * K = scalar-op(rand, (elem-op(scalar-op(peer-commit-scalar, PWE),
	 *                                        PEER-COMMIT-ELEMENT)))
	 * If K is identity element (point-at-infinity), reject
	 * k = F(K) (= x coordinate)
	 */

	if (FUNC4(sae->tmp->ec, sae->tmp->pwe_ecc,
				sae->peer_commit_scalar, K) < 0 ||
	    FUNC0(sae->tmp->ec, K,
				sae->tmp->peer_commit_element_ecc, K) < 0 ||
	    FUNC4(sae->tmp->ec, K, sae->tmp->sae_rand, K) < 0 ||
	    FUNC3(sae->tmp->ec, K) ||
	    FUNC5(sae->tmp->ec, K, k, NULL) < 0) {
		FUNC7(MSG_DEBUG, "SAE: Failed to calculate K and k");
		goto fail;
	}

	FUNC6(MSG_DEBUG, "SAE: k", k, sae->tmp->prime_len);

	ret = 0;
fail:
	FUNC1(K, 1);
	return ret;
}