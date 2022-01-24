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
typedef  size_t word32 ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  WC_RNG ;
typedef  int /*<<< orphan*/  DhKey ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(u8 generator, const u8 *prime, size_t prime_len, u8 *privkey,
		   u8 *pubkey)
{
	int ret = -1;
	WC_RNG rng;
	DhKey *dh = NULL;
	word32 priv_sz, pub_sz;

	if (FUNC0())
		return -1;

	dh = FUNC2(sizeof(DhKey));
	if (!dh)
		return -1;
	FUNC9(dh);

	if (FUNC10(&rng) != 0) {
		FUNC1(dh);
		return -1;
	}

	if (FUNC6(dh, prime, prime_len, &generator, 1) != 0)
		goto done;

	if (FUNC5(dh, &rng, privkey, &priv_sz, pubkey, &pub_sz)
	    != 0)
		goto done;

	if (priv_sz < prime_len) {
		size_t pad_sz = prime_len - priv_sz;

		FUNC3(privkey + pad_sz, privkey, priv_sz);
		FUNC4(privkey, 0, pad_sz);
	}

	if (pub_sz < prime_len) {
		size_t pad_sz = prime_len - pub_sz;

		FUNC3(pubkey + pad_sz, pubkey, pub_sz);
		FUNC4(pubkey, 0, pad_sz);
	}
	ret = 0;
done:
	FUNC7(dh);
	FUNC1(dh);
	FUNC8(&rng);
	return ret;
}