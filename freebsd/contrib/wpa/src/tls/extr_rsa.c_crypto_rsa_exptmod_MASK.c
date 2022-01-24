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
struct crypto_rsa_key {int /*<<< orphan*/  n; int /*<<< orphan*/  e; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  iqmp; int /*<<< orphan*/  dmq1; int /*<<< orphan*/  dmp1; int /*<<< orphan*/  private_key; } ;
struct bignum {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bignum*,struct bignum*,struct bignum*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct bignum*) ; 
 int /*<<< orphan*/  FUNC2 (struct bignum*) ; 
 scalar_t__ FUNC3 (struct bignum*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bignum*) ; 
 scalar_t__ FUNC4 (struct bignum*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (struct bignum*) ; 
 struct bignum* FUNC6 () ; 
 scalar_t__ FUNC7 (struct bignum*,int /*<<< orphan*/ ,struct bignum*) ; 
 scalar_t__ FUNC8 (struct bignum*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bignum*) ; 
 scalar_t__ FUNC9 (struct bignum*,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC10 (struct bignum*,struct bignum*,struct bignum*) ; 
 size_t FUNC11 (struct crypto_rsa_key*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

int FUNC13(const u8 *in, size_t inlen, u8 *out, size_t *outlen,
		       struct crypto_rsa_key *key, int use_private)
{
	struct bignum *tmp, *a = NULL, *b = NULL;
	int ret = -1;
	size_t modlen;

	if (use_private && !key->private_key)
		return -1;

	tmp = FUNC6();
	if (tmp == NULL)
		return -1;

	if (FUNC9(tmp, in, inlen) < 0)
		goto error;
	if (FUNC1(key->n, tmp) < 0) {
		/* Too large input value for the RSA key modulus */
		goto error;
	}

	if (use_private) {
		/*
		 * Decrypt (or sign) using Chinese remainer theorem to speed
		 * up calculation. This is equivalent to tmp = tmp^d mod n
		 * (which would require more CPU to calculate directly).
		 *
		 * dmp1 = (1/e) mod (p-1)
		 * dmq1 = (1/e) mod (q-1)
		 * iqmp = (1/q) mod p, where p > q
		 * m1 = c^dmp1 mod p
		 * m2 = c^dmq1 mod q
		 * h = q^-1 (m1 - m2) mod p
		 * m = m2 + hq
		 */
		a = FUNC6();
		b = FUNC6();
		if (a == NULL || b == NULL)
			goto error;

		/* a = tmp^dmp1 mod p */
		if (FUNC3(tmp, key->dmp1, key->p, a) < 0)
			goto error;

		/* b = tmp^dmq1 mod q */
		if (FUNC3(tmp, key->dmq1, key->q, b) < 0)
			goto error;

		/* tmp = (a - b) * (1/q mod p) (mod p) */
		if (FUNC10(a, b, tmp) < 0 ||
		    FUNC8(tmp, key->iqmp, key->p, tmp) < 0)
			goto error;

		/* tmp = b + q * tmp */
		if (FUNC7(tmp, key->q, tmp) < 0 ||
		    FUNC0(tmp, b, tmp) < 0)
			goto error;
	} else {
		/* Encrypt (or verify signature) */
		/* tmp = tmp^e mod N */
		if (FUNC3(tmp, key->e, key->n, tmp) < 0)
			goto error;
	}

	modlen = FUNC11(key);
	if (modlen > *outlen) {
		*outlen = modlen;
		goto error;
	}

	if (FUNC5(tmp) > modlen)
		goto error; /* should never happen */

	*outlen = modlen;
	FUNC12(out, 0, modlen);
	if (FUNC4(
		    tmp, out +
		    (modlen - FUNC5(tmp)), NULL) < 0)
		goto error;

	ret = 0;

error:
	FUNC2(tmp);
	FUNC2(a);
	FUNC2(b);
	return ret;
}