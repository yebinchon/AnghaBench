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
struct crypto_bignum {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (struct crypto_bignum*,struct crypto_bignum*,struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_bignum*) ; 
 scalar_t__ FUNC3 (struct crypto_bignum*,struct crypto_bignum const*,struct crypto_bignum*) ; 
 scalar_t__ FUNC4 (struct crypto_bignum*,struct crypto_bignum const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(const struct crypto_bignum *order,
			      struct crypto_bignum *_rand,
			      struct crypto_bignum *_mask,
			      struct crypto_bignum *scalar)
{
	int count;

	/* Select two random values rand,mask such that 1 < rand,mask < r and
	 * rand + mask mod r > 1. */
	for (count = 0; count < 100; count++) {
		if (FUNC4(_rand, order) &&
		    FUNC4(_mask, order) &&
		    FUNC0(_rand, _mask, scalar) == 0 &&
		    FUNC3(scalar, order, scalar) == 0 &&
		    !FUNC2(scalar) &&
		    !FUNC1(scalar))
			return 0;
	}

	/* This should not be reachable in practice if the random number
	 * generation is working. */
	FUNC5(MSG_INFO,
		   "dragonfly: Unable to get randomness for own scalar");
	return -1;
}