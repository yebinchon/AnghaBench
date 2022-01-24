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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t*) ; 

int FUNC10(u8 generator, const u8 *prime, size_t prime_len,
			    const u8 *order, size_t order_len,
			    const u8 *privkey, size_t privkey_len,
			    const u8 *pubkey, size_t pubkey_len,
			    u8 *secret, size_t *len)
{
	BIGNUM *pub, *p;
	int res = -1;

	pub = FUNC2(pubkey, pubkey_len, NULL);
	p = FUNC2(prime, prime_len, NULL);
	if (!pub || !p || FUNC6(pub) || FUNC5(pub) ||
	    FUNC4(pub, p) >= 0)
		goto fail;

	if (order) {
		BN_CTX *ctx;
		BIGNUM *q, *tmp;
		int failed;

		/* verify: pubkey^q == 1 mod p */
		q = FUNC2(order, order_len, NULL);
		ctx = FUNC1();
		tmp = FUNC8();
		failed = !q || !ctx || !tmp ||
			!FUNC7(tmp, pub, q, p, ctx) ||
			!FUNC5(tmp);
		FUNC3(q);
		FUNC3(tmp);
		FUNC0(ctx);
		if (failed)
			goto fail;
	}

	res = FUNC9(pubkey, pubkey_len, privkey, privkey_len,
			     prime, prime_len, secret, len);
fail:
	FUNC3(pub);
	FUNC3(p);
	return res;
}