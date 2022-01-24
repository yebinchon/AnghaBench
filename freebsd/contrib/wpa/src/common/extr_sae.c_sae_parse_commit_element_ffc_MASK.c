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
typedef  int /*<<< orphan*/  u16 ;
struct sae_data {TYPE_1__* tmp; } ;
struct crypto_bignum {int dummy; } ;
typedef  int /*<<< orphan*/  one_bin ;
struct TYPE_2__ {int prime_len; int /*<<< orphan*/  prime; int /*<<< orphan*/  order; struct crypto_bignum* peer_commit_element_ffc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 scalar_t__ FUNC0 (struct crypto_bignum*,struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_bignum*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct crypto_bignum*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_bignum*) ; 
 struct crypto_bignum* FUNC3 () ; 
 void* FUNC4 (int const*,int) ; 
 scalar_t__ FUNC5 (struct crypto_bignum*) ; 
 scalar_t__ FUNC6 (struct crypto_bignum*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct crypto_bignum*,struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u16 FUNC10(struct sae_data *sae, const u8 **pos,
					const u8 *end)
{
	struct crypto_bignum *res, *one;
	const u8 one_bin[1] = { 0x01 };

	if (sae->tmp->prime_len > end - *pos) {
		FUNC9(MSG_DEBUG, "SAE: Not enough data for "
			   "commit-element");
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}
	FUNC8(MSG_DEBUG, "SAE: Peer commit-element", *pos,
		    sae->tmp->prime_len);

	FUNC1(sae->tmp->peer_commit_element_ffc, 0);
	sae->tmp->peer_commit_element_ffc =
		FUNC4(*pos, sae->tmp->prime_len);
	if (sae->tmp->peer_commit_element_ffc == NULL)
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	/* 1 < element < p - 1 */
	res = FUNC3();
	one = FUNC4(one_bin, sizeof(one_bin));
	if (!res || !one ||
	    FUNC7(sae->tmp->prime, one, res) ||
	    FUNC6(sae->tmp->peer_commit_element_ffc) ||
	    FUNC5(sae->tmp->peer_commit_element_ffc) ||
	    FUNC0(sae->tmp->peer_commit_element_ffc, res) >= 0) {
		FUNC1(res, 0);
		FUNC1(one, 0);
		FUNC9(MSG_DEBUG, "SAE: Invalid peer element");
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}
	FUNC1(one, 0);

	/* scalar-op(r, ELEMENT) = 1 modulo p */
	if (FUNC2(sae->tmp->peer_commit_element_ffc,
				  sae->tmp->order, sae->tmp->prime, res) < 0 ||
	    !FUNC5(res)) {
		FUNC9(MSG_DEBUG, "SAE: Invalid peer element (scalar-op)");
		FUNC1(res, 0);
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}
	FUNC1(res, 0);

	*pos += sae->tmp->prime_len;

	return WLAN_STATUS_SUCCESS;
}