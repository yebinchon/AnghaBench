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
struct sae_data {TYPE_1__* tmp; } ;
typedef  int /*<<< orphan*/  prime ;
struct TYPE_2__ {int prime_len; int /*<<< orphan*/ * peer_commit_element_ecc; int /*<<< orphan*/  ec; int /*<<< orphan*/  prime; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SAE_MAX_ECC_PRIME_LEN ; 
 int /*<<< orphan*/  WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u16 FUNC7(struct sae_data *sae, const u8 **pos,
					const u8 *end)
{
	u8 prime[SAE_MAX_ECC_PRIME_LEN];

	if (2 * sae->tmp->prime_len > end - *pos) {
		FUNC6(MSG_DEBUG, "SAE: Not enough data for "
			   "commit-element");
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}

	if (FUNC0(sae->tmp->prime, prime, sizeof(prime),
				 sae->tmp->prime_len) < 0)
		return WLAN_STATUS_UNSPECIFIED_FAILURE;

	/* element x and y coordinates < p */
	if (FUNC4(*pos, prime, sae->tmp->prime_len) >= 0 ||
	    FUNC4(*pos + sae->tmp->prime_len, prime,
		      sae->tmp->prime_len) >= 0) {
		FUNC6(MSG_DEBUG, "SAE: Invalid coordinates in peer "
			   "element");
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}

	FUNC5(MSG_DEBUG, "SAE: Peer commit-element(x)",
		    *pos, sae->tmp->prime_len);
	FUNC5(MSG_DEBUG, "SAE: Peer commit-element(y)",
		    *pos + sae->tmp->prime_len, sae->tmp->prime_len);

	FUNC1(sae->tmp->peer_commit_element_ecc, 0);
	sae->tmp->peer_commit_element_ecc =
		FUNC2(sae->tmp->ec, *pos);
	if (sae->tmp->peer_commit_element_ecc == NULL)
		return WLAN_STATUS_UNSPECIFIED_FAILURE;

	if (!FUNC3(sae->tmp->ec,
					 sae->tmp->peer_commit_element_ecc)) {
		FUNC6(MSG_DEBUG, "SAE: Peer element is not on curve");
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}

	*pos += 2 * sae->tmp->prime_len;

	return WLAN_STATUS_SUCCESS;
}