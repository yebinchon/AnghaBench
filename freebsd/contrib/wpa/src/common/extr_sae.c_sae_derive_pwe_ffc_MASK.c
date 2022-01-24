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
typedef  int u8 ;
struct sae_data {TYPE_1__* tmp; int /*<<< orphan*/  group; } ;
struct crypto_bignum {int dummy; } ;
typedef  int /*<<< orphan*/  counter ;
typedef  int /*<<< orphan*/  addrs ;
struct TYPE_2__ {int prime_len; struct crypto_bignum* pwe_ffc; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*,size_t) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int*,size_t,int*) ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_bignum*,int) ; 
 struct crypto_bignum* FUNC5 () ; 
 struct crypto_bignum* FUNC6 (int*,size_t) ; 
 scalar_t__ FUNC7 (struct crypto_bignum*,int*,size_t,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int*,int,size_t,int const**,size_t*,int*) ; 
 size_t FUNC10 (char const*) ; 
 int* FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (int const*,int const*,int*) ; 
 int FUNC13 (struct sae_data*,int*,struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC16(struct sae_data *sae, const u8 *addr1,
			      const u8 *addr2, const u8 *password,
			      size_t password_len, const char *identifier)
{
	u8 counter, k, sel_counter = 0;
	u8 addrs[2 * ETH_ALEN];
	const u8 *addr[3];
	size_t len[3];
	size_t num_elem;
	u8 found = 0; /* 0 (false) or 0xff (true) to be used as const_time_*
		       * mask */
	u8 mask;
	struct crypto_bignum *pwe;
	size_t prime_len = sae->tmp->prime_len * 8;
	u8 *pwe_buf;

	FUNC4(sae->tmp->pwe_ffc, 1);
	sae->tmp->pwe_ffc = NULL;

	/* Allocate a buffer to maintain selected and candidate PWE for constant
	 * time selection. */
	pwe_buf = FUNC11(prime_len * 2);
	pwe = FUNC5();
	if (!pwe_buf || !pwe)
		goto fail;

	FUNC14(MSG_DEBUG, "SAE: password",
			      password, password_len);

	/*
	 * H(salt, ikm) = HMAC-SHA256(salt, ikm)
	 * pwd-seed = H(MAX(STA-A-MAC, STA-B-MAC) || MIN(STA-A-MAC, STA-B-MAC),
	 *              password [|| identifier] || counter)
	 */
	FUNC12(addr1, addr2, addrs);

	addr[0] = password;
	len[0] = password_len;
	num_elem = 1;
	if (identifier) {
		addr[num_elem] = (const u8 *) identifier;
		len[num_elem] = FUNC10(identifier);
		num_elem++;
	}
	addr[num_elem] = &counter;
	len[num_elem] = sizeof(counter);
	num_elem++;

	k = FUNC8(sae->group);

	for (counter = 1; counter <= k || !found; counter++) {
		u8 pwd_seed[SHA256_MAC_LEN];
		int res;

		if (counter > 200) {
			/* This should not happen in practice */
			FUNC15(MSG_DEBUG, "SAE: Failed to derive PWE");
			break;
		}

		FUNC15(MSG_DEBUG, "SAE: counter = %02u", counter);
		if (FUNC9(addrs, sizeof(addrs), num_elem,
				       addr, len, pwd_seed) < 0)
			break;
		res = FUNC13(sae, pwd_seed, pwe);
		/* res is -1 for fatal failure, 0 if a valid PWE was not found,
		 * or 1 if a valid PWE was found. */
		if (res < 0)
			break;
		/* Store the candidate PWE into the second half of pwe_buf and
		 * the selected PWE in the beginning of pwe_buf using constant
		 * time selection. */
		if (FUNC7(pwe, pwe_buf + prime_len, prime_len,
					 prime_len) < 0)
			break;
		FUNC2(found, pwe_buf, pwe_buf + prime_len,
				      prime_len, pwe_buf);
		sel_counter = FUNC3(found, sel_counter, counter);
		mask = FUNC1(res, 1);
		found = FUNC3(found, found, mask);
	}

	if (!found)
		goto fail;

	FUNC15(MSG_DEBUG, "SAE: Use PWE from counter = %02u", sel_counter);
	sae->tmp->pwe_ffc = FUNC6(pwe_buf, prime_len);
fail:
	FUNC4(pwe, 1);
	FUNC0(pwe_buf, prime_len * 2);
	return sae->tmp->pwe_ffc ? 0 : -1;
}