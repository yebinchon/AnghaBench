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
typedef  int /*<<< orphan*/ * gcry_mpi_t ;

/* Variables and functions */
 int /*<<< orphan*/  GCRYMPI_FMT_USG ; 
 scalar_t__ GPG_ERR_NO_ERROR ; 
 int FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC7(u8 generator, const u8 *prime, size_t prime_len,
			    const u8 *order, size_t order_len,
			    const u8 *privkey, size_t privkey_len,
			    const u8 *pubkey, size_t pubkey_len,
			    u8 *secret, size_t *len)
{
	gcry_mpi_t pub = NULL;
	int res = -1;

	if (pubkey_len > prime_len ||
	    (pubkey_len == prime_len &&
	     FUNC6(pubkey, prime, prime_len) >= 0))
		return -1;

	if (FUNC5(&pub, GCRYMPI_FMT_USG, pubkey, pubkey_len, NULL) !=
	    GPG_ERR_NO_ERROR ||
	    FUNC1(pub, 1) <= 0)
		goto fail;

	if (order) {
		gcry_mpi_t p = NULL, q = NULL, tmp;
		int failed;

		/* verify: pubkey^q == 1 mod p */
		tmp = FUNC2(prime_len * 8);
		failed = !tmp ||
			FUNC5(&p, GCRYMPI_FMT_USG, prime, prime_len,
				      NULL) != GPG_ERR_NO_ERROR ||
			FUNC5(&q, GCRYMPI_FMT_USG, order, order_len,
				      NULL) != GPG_ERR_NO_ERROR;
		if (!failed) {
			FUNC3(tmp, pub, q, p);
			failed = FUNC1(tmp, 1) != 0;
		}
		FUNC4(p);
		FUNC4(q);
		FUNC4(tmp);
		if (failed)
			goto fail;
	}

	res = FUNC0(pubkey, pubkey_len, privkey, privkey_len,
			     prime, prime_len, secret, len);
fail:
	FUNC4(pub);
	return res;
}