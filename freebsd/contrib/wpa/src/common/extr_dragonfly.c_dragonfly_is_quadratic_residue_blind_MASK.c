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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_ec {int dummy; } ;
typedef  struct crypto_bignum const crypto_bignum ;

/* Variables and functions */
 int DRAGONFLY_MAX_ECC_PRIME_LEN ; 
 unsigned int FUNC0 (int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC3 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_bignum const*,int) ; 
 struct crypto_bignum const* FUNC5 () ; 
 struct crypto_bignum const* FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_bignum const*) ; 
 int FUNC8 (struct crypto_bignum const*,struct crypto_bignum const*) ; 
 scalar_t__ FUNC9 (struct crypto_bignum const*,struct crypto_bignum const*,struct crypto_bignum const*,struct crypto_bignum const*) ; 
 struct crypto_bignum const* FUNC10 (struct crypto_ec*) ; 
 size_t FUNC11 (struct crypto_ec*) ; 
 struct crypto_bignum const* FUNC12 (struct crypto_bignum const*) ; 

int FUNC13(struct crypto_ec *ec,
					 const u8 *qr, const u8 *qnr,
					 const struct crypto_bignum *val)
{
	struct crypto_bignum *r, *num, *qr_or_qnr = NULL;
	int check, res = -1;
	u8 qr_or_qnr_bin[DRAGONFLY_MAX_ECC_PRIME_LEN];
	const struct crypto_bignum *prime;
	size_t prime_len;
	unsigned int mask;

	prime = FUNC10(ec);
	prime_len = FUNC11(ec);

	/*
	 * Use a blinding technique to mask val while determining whether it is
	 * a quadratic residue modulo p to avoid leaking timing information
	 * while determining the Legendre symbol.
	 *
	 * v = val
	 * r = a random number between 1 and p-1, inclusive
	 * num = (v * r * r) modulo p
	 */
	r = FUNC12(prime);
	if (!r)
		return -1;

	num = FUNC5();
	if (!num ||
	    FUNC9(val, r, prime, num) < 0 ||
	    FUNC9(num, r, prime, num) < 0)
		goto fail;

	/*
	 * Need to minimize differences in handling different cases, so try to
	 * avoid branches and timing differences.
	 *
	 * If r is odd:
	 * num = (num * qr) module p
	 * LGR(num, p) = 1 ==> quadratic residue
	 * else:
	 * num = (num * qnr) module p
	 * LGR(num, p) = -1 ==> quadratic residue
	 *
	 * mask is set to !odd(r)
	 */
	mask = FUNC1(FUNC7(r));
	FUNC2(mask, qnr, qr, prime_len, qr_or_qnr_bin);
	qr_or_qnr = FUNC6(qr_or_qnr_bin, prime_len);
	if (!qr_or_qnr ||
	    FUNC9(num, qr_or_qnr, prime, num) < 0)
		goto fail;
	/* branchless version of check = odd(r) ? 1 : -1, */
	check = FUNC3(mask, -1, 1);

	/* Determine the Legendre symbol on the masked value */
	res = FUNC8(num, prime);
	if (res == -2) {
		res = -1;
		goto fail;
	}
	/* branchless version of res = res == check
	 * (res is -1, 0, or 1; check is -1 or 1) */
	mask = FUNC0(res, check);
	res = FUNC3(mask, 1, 0);
fail:
	FUNC4(num, 1);
	FUNC4(r, 1);
	FUNC4(qr_or_qnr, 1);
	return res;
}