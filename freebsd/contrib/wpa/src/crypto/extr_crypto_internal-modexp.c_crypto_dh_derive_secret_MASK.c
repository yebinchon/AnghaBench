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
struct bignum {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bignum*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bignum*) ; 
 scalar_t__ FUNC2 (struct bignum*,struct bignum*,struct bignum*,struct bignum*) ; 
 struct bignum* FUNC3 () ; 
 scalar_t__ FUNC4 (struct bignum*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC7(u8 generator, const u8 *prime, size_t prime_len,
			    const u8 *order, size_t order_len,
			    const u8 *privkey, size_t privkey_len,
			    const u8 *pubkey, size_t pubkey_len,
			    u8 *secret, size_t *len)
{
	struct bignum *pub;
	int res = -1;

	if (pubkey_len > prime_len ||
	    (pubkey_len == prime_len &&
	     FUNC6(pubkey, prime, prime_len) >= 0))
		return -1;

	pub = FUNC3();
	if (!pub || FUNC4(pub, pubkey, pubkey_len) < 0 ||
	    FUNC0(pub, 1) <= 0)
		goto fail;

	if (order) {
		struct bignum *p, *q, *tmp;
		int failed;

		/* verify: pubkey^q == 1 mod p */
		p = FUNC3();
		q = FUNC3();
		tmp = FUNC3();
		failed = !p || !q || !tmp ||
			FUNC4(p, prime, prime_len) < 0 ||
			FUNC4(q, order, order_len) < 0 ||
			FUNC2(pub, q, p, tmp) < 0 ||
			FUNC0(tmp, 1) != 0;
		FUNC1(p);
		FUNC1(q);
		FUNC1(tmp);
		if (failed)
			goto fail;
	}

	res = FUNC5(pubkey, pubkey_len, privkey, privkey_len,
			     prime, prime_len, secret, len);
fail:
	FUNC1(pub);
	return res;
}