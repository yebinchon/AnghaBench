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
struct crypto_bignum {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_bignum*,struct crypto_bignum*,struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_bignum*,int /*<<< orphan*/ ) ; 
 struct crypto_bignum* FUNC2 () ; 
 struct crypto_bignum* FUNC3 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (struct crypto_bignum*,struct crypto_bignum*) ; 
 scalar_t__ FUNC5 (struct crypto_bignum const*,struct crypto_bignum*,struct crypto_bignum*) ; 

__attribute__((used)) static struct crypto_bignum *
FUNC6(const struct crypto_bignum *prime)
{
	struct crypto_bignum *tmp, *pm1, *one;

	tmp = FUNC2();
	pm1 = FUNC2();
	one = FUNC3((const u8 *) "\x01", 1);
	if (!tmp || !pm1 || !one ||
	    FUNC5(prime, one, pm1) < 0 ||
	    FUNC4(tmp, pm1) < 0 ||
	    FUNC0(tmp, one, tmp) < 0) {
		FUNC1(tmp, 0);
		tmp = NULL;
	}

	FUNC1(pm1, 0);
	FUNC1(one, 0);
	return tmp;
}