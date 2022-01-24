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
typedef  int /*<<< orphan*/  const u8 ;
struct sae_data {TYPE_1__* tmp; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ec; int /*<<< orphan*/  prime_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_bignum*,int) ; 
 struct crypto_bignum* FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct crypto_bignum* FUNC6 (int /*<<< orphan*/ ,struct crypto_bignum*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct crypto_bignum*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sae_data *sae, const u8 *pwd_seed,
				 const u8 *prime, const u8 *qr, const u8 *qnr,
				 u8 *pwd_value)
{
	struct crypto_bignum *y_sqr, *x_cand;
	int res;
	size_t bits;
	int cmp_prime;
	unsigned int in_range;

	FUNC10(MSG_DEBUG, "SAE: pwd-seed", pwd_seed, SHA256_MAC_LEN);

	/* pwd-value = KDF-z(pwd-seed, "SAE Hunting and Pecking", p) */
	bits = FUNC7(sae->tmp->ec);
	if (FUNC9(pwd_seed, SHA256_MAC_LEN, "SAE Hunting and Pecking",
			    prime, sae->tmp->prime_len, pwd_value, bits) < 0)
		return -1;
	if (bits % 8)
		FUNC0(pwd_value, sae->tmp->prime_len, 8 - bits % 8);
	FUNC10(MSG_DEBUG, "SAE: pwd-value",
			pwd_value, sae->tmp->prime_len);

	cmp_prime = FUNC2(pwd_value, prime, sae->tmp->prime_len);
	/* Create a const_time mask for selection based on prf result
	 * being smaller than prime. */
	in_range = FUNC1((unsigned int) cmp_prime);
	/* The algorithm description would skip the next steps if
	 * cmp_prime >= 0 (reutnr 0 here), but go through them regardless to
	 * minimize externally observable differences in behavior. */

	x_cand = FUNC5(pwd_value, sae->tmp->prime_len);
	if (!x_cand)
		return -1;
	y_sqr = FUNC6(sae->tmp->ec, x_cand);
	FUNC4(x_cand, 1);
	if (!y_sqr)
		return -1;

	res = FUNC8(sae->tmp->ec, qr, qnr,
						   y_sqr);
	FUNC4(y_sqr, 1);
	if (res < 0)
		return res;
	return FUNC3(in_range, res, 0);
}