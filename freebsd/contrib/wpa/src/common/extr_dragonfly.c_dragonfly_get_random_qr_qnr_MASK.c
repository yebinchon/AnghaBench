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
 int /*<<< orphan*/  FUNC0 (struct crypto_bignum*,int /*<<< orphan*/ ) ; 
 struct crypto_bignum* FUNC1 () ; 
 int FUNC2 (struct crypto_bignum*,struct crypto_bignum const*) ; 
 scalar_t__ FUNC3 (struct crypto_bignum*,struct crypto_bignum const*) ; 

int FUNC4(const struct crypto_bignum *prime,
				struct crypto_bignum **qr,
				struct crypto_bignum **qnr)
{
	*qr = *qnr = NULL;

	while (!(*qr) || !(*qnr)) {
		struct crypto_bignum *tmp;
		int res;

		tmp = FUNC1();
		if (!tmp || FUNC3(tmp, prime) < 0) {
			FUNC0(tmp, 0);
			break;
		}

		res = FUNC2(tmp, prime);
		if (res == 1 && !(*qr))
			*qr = tmp;
		else if (res == -1 && !(*qnr))
			*qnr = tmp;
		else
			FUNC0(tmp, 0);
	}

	if (*qr && *qnr)
		return 0;
	FUNC0(*qr, 0);
	FUNC0(*qnr, 0);
	*qr = *qnr = NULL;
	return -1;
}