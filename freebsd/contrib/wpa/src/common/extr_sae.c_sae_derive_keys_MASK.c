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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  u8 ;
struct sae_data {int /*<<< orphan*/ * pmk; TYPE_1__* tmp; int /*<<< orphan*/ * pmkid; int /*<<< orphan*/  peer_commit_scalar; } ;
struct crypto_bignum {int dummy; } ;
typedef  int /*<<< orphan*/  null_key ;
typedef  int /*<<< orphan*/  keyseed ;
typedef  int /*<<< orphan*/  keys ;
struct TYPE_2__ {int /*<<< orphan*/ * kck; int /*<<< orphan*/  order_len; int /*<<< orphan*/  order; int /*<<< orphan*/  own_commit_scalar; int /*<<< orphan*/  prime_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SAE_KCK_LEN ; 
 int SAE_KEYSEED_KEY_LEN ; 
 int SAE_MAX_PRIME_LEN ; 
 int SAE_PMKID_LEN ; 
 int SAE_PMK_LEN ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_bignum*,int /*<<< orphan*/ ) ; 
 struct crypto_bignum* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_bignum*,int /*<<< orphan*/ ,struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_bignum*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct sae_data *sae, const u8 *k)
{
	u8 null_key[SAE_KEYSEED_KEY_LEN], val[SAE_MAX_PRIME_LEN];
	u8 keyseed[SHA256_MAC_LEN];
	u8 keys[SAE_KCK_LEN + SAE_PMK_LEN];
	struct crypto_bignum *tmp;
	int ret = -1;

	tmp = FUNC2();
	if (tmp == NULL)
		goto fail;

	/* keyseed = H(<0>32, k)
	 * KCK || PMK = KDF-512(keyseed, "SAE KCK and PMK",
	 *                      (commit-scalar + peer-commit-scalar) modulo r)
	 * PMKID = L((commit-scalar + peer-commit-scalar) modulo r, 0, 128)
	 */

	FUNC7(null_key, 0, sizeof(null_key));
	FUNC5(null_key, sizeof(null_key), k, sae->tmp->prime_len,
		    keyseed);
	FUNC10(MSG_DEBUG, "SAE: keyseed", keyseed, sizeof(keyseed));

	FUNC0(sae->tmp->own_commit_scalar, sae->peer_commit_scalar,
			  tmp);
	FUNC3(tmp, sae->tmp->order, tmp);
	/* IEEE Std 802.11-2016 is not exactly clear on the encoding of the bit
	 * string that is needed for KCK, PMK, and PMKID derivation, but it
	 * seems to make most sense to encode the
	 * (commit-scalar + peer-commit-scalar) mod r part as a bit string by
	 * zero padding it from left to the length of the order (in full
	 * octets). */
	FUNC4(tmp, val, sizeof(val), sae->tmp->order_len);
	FUNC9(MSG_DEBUG, "SAE: PMKID", val, SAE_PMKID_LEN);
	if (FUNC8(keyseed, sizeof(keyseed), "SAE KCK and PMK",
		       val, sae->tmp->order_len, keys, sizeof(keys)) < 0)
		goto fail;
	FUNC7(keyseed, 0, sizeof(keyseed));
	FUNC6(sae->tmp->kck, keys, SAE_KCK_LEN);
	FUNC6(sae->pmk, keys + SAE_KCK_LEN, SAE_PMK_LEN);
	FUNC6(sae->pmkid, val, SAE_PMKID_LEN);
	FUNC7(keys, 0, sizeof(keys));
	FUNC10(MSG_DEBUG, "SAE: KCK", sae->tmp->kck, SAE_KCK_LEN);
	FUNC10(MSG_DEBUG, "SAE: PMK", sae->pmk, SAE_PMK_LEN);

	ret = 0;
fail:
	FUNC1(tmp, 0);
	return ret;
}