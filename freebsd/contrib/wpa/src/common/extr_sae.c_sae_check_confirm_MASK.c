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
typedef  int /*<<< orphan*/  const u8 ;
struct sae_data {TYPE_1__* tmp; int /*<<< orphan*/  peer_commit_scalar; } ;
struct TYPE_2__ {int /*<<< orphan*/  own_commit_element_ffc; int /*<<< orphan*/  own_commit_scalar; int /*<<< orphan*/  peer_commit_element_ffc; int /*<<< orphan*/  own_commit_element_ecc; int /*<<< orphan*/  peer_commit_element_ecc; scalar_t__ ec; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sae_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sae_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC6(struct sae_data *sae, const u8 *data, size_t len)
{
	u8 verifier[SHA256_MAC_LEN];

	if (len < 2 + SHA256_MAC_LEN) {
		FUNC5(MSG_DEBUG, "SAE: Too short confirm message");
		return -1;
	}

	FUNC5(MSG_DEBUG, "SAE: peer-send-confirm %u", FUNC0(data));

	if (!sae->tmp || !sae->peer_commit_scalar ||
	    !sae->tmp->own_commit_scalar) {
		FUNC5(MSG_DEBUG, "SAE: Temporary data not yet available");
		return -1;
	}

	if (sae->tmp->ec) {
		if (!sae->tmp->peer_commit_element_ecc ||
		    !sae->tmp->own_commit_element_ecc)
			return -1;
		FUNC2(sae, data, sae->peer_commit_scalar,
				   sae->tmp->peer_commit_element_ecc,
				   sae->tmp->own_commit_scalar,
				   sae->tmp->own_commit_element_ecc,
				   verifier);
	} else {
		if (!sae->tmp->peer_commit_element_ffc ||
		    !sae->tmp->own_commit_element_ffc)
			return -1;
		FUNC3(sae, data, sae->peer_commit_scalar,
				   sae->tmp->peer_commit_element_ffc,
				   sae->tmp->own_commit_scalar,
				   sae->tmp->own_commit_element_ffc,
				   verifier);
	}

	if (FUNC1(verifier, data + 2, SHA256_MAC_LEN) != 0) {
		FUNC5(MSG_DEBUG, "SAE: Confirm mismatch");
		FUNC4(MSG_DEBUG, "SAE: Received confirm",
			    data + 2, SHA256_MAC_LEN);
		FUNC4(MSG_DEBUG, "SAE: Calculated verifier",
			    verifier, SHA256_MAC_LEN);
		return -1;
	}

	return 0;
}