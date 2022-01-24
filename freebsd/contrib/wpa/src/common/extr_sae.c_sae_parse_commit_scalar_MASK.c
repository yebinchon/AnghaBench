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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sae_data {scalar_t__ state; TYPE_1__* tmp; struct crypto_bignum* peer_commit_scalar; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {int prime_len; struct crypto_bignum* order; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ SAE_ACCEPTED ; 
 int /*<<< orphan*/  WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 scalar_t__ FUNC0 (struct crypto_bignum*,struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_bignum*,int /*<<< orphan*/ ) ; 
 struct crypto_bignum* FUNC2 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC3 (struct crypto_bignum*) ; 
 scalar_t__ FUNC4 (struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u16 FUNC7(struct sae_data *sae, const u8 **pos,
				   const u8 *end)
{
	struct crypto_bignum *peer_scalar;

	if (sae->tmp->prime_len > end - *pos) {
		FUNC6(MSG_DEBUG, "SAE: Not enough data for scalar");
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}

	peer_scalar = FUNC2(*pos, sae->tmp->prime_len);
	if (peer_scalar == NULL)
		return WLAN_STATUS_UNSPECIFIED_FAILURE;

	/*
	 * IEEE Std 802.11-2012, 11.3.8.6.1: If there is a protocol instance for
	 * the peer and it is in Authenticated state, the new Commit Message
	 * shall be dropped if the peer-scalar is identical to the one used in
	 * the existing protocol instance.
	 */
	if (sae->state == SAE_ACCEPTED && sae->peer_commit_scalar &&
	    FUNC0(sae->peer_commit_scalar, peer_scalar) == 0) {
		FUNC6(MSG_DEBUG, "SAE: Do not accept re-use of previous "
			   "peer-commit-scalar");
		FUNC1(peer_scalar, 0);
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}

	/* 1 < scalar < r */
	if (FUNC4(peer_scalar) ||
	    FUNC3(peer_scalar) ||
	    FUNC0(peer_scalar, sae->tmp->order) >= 0) {
		FUNC6(MSG_DEBUG, "SAE: Invalid peer scalar");
		FUNC1(peer_scalar, 0);
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}


	FUNC1(sae->peer_commit_scalar, 0);
	sae->peer_commit_scalar = peer_scalar;
	FUNC5(MSG_DEBUG, "SAE: Peer commit-scalar",
		    *pos, sae->tmp->prime_len);
	*pos += sae->tmp->prime_len;

	return WLAN_STATUS_SUCCESS;
}