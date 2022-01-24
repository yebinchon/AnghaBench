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
typedef  scalar_t__ u16 ;
struct sae_data {TYPE_1__* tmp; int /*<<< orphan*/  peer_commit_scalar; } ;
struct TYPE_2__ {int /*<<< orphan*/  peer_commit_element_ecc; int /*<<< orphan*/  own_commit_element_ecc; scalar_t__ ec; int /*<<< orphan*/  peer_commit_element_ffc; int /*<<< orphan*/  own_commit_element_ffc; scalar_t__ dh; int /*<<< orphan*/  own_commit_scalar; } ;

/* Variables and functions */
 scalar_t__ SAE_SILENTLY_DISCARD ; 
 scalar_t__ WLAN_STATUS_SUCCESS ; 
 scalar_t__ WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sae_data*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sae_data*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (struct sae_data*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sae_data*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,int /*<<< orphan*/  const**,size_t*) ; 
 scalar_t__ FUNC7 (struct sae_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

u16 FUNC8(struct sae_data *sae, const u8 *data, size_t len,
		     const u8 **token, size_t *token_len, int *allowed_groups)
{
	const u8 *pos = data, *end = data + len;
	u16 res;

	/* Check Finite Cyclic Group */
	if (end - pos < 2)
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	res = FUNC3(sae, allowed_groups, FUNC0(pos));
	if (res != WLAN_STATUS_SUCCESS)
		return res;
	pos += 2;

	/* Optional Anti-Clogging Token */
	FUNC6(sae, &pos, end, token, token_len);

	/* commit-scalar */
	res = FUNC5(sae, &pos, end);
	if (res != WLAN_STATUS_SUCCESS)
		return res;

	/* commit-element */
	res = FUNC4(sae, &pos, end);
	if (res != WLAN_STATUS_SUCCESS)
		return res;

	/* Optional Password Identifier element */
	res = FUNC7(sae, pos, end);
	if (res != WLAN_STATUS_SUCCESS)
		return res;

	/*
	 * Check whether peer-commit-scalar and PEER-COMMIT-ELEMENT are same as
	 * the values we sent which would be evidence of a reflection attack.
	 */
	if (!sae->tmp->own_commit_scalar ||
	    FUNC1(sae->tmp->own_commit_scalar,
			      sae->peer_commit_scalar) != 0 ||
	    (sae->tmp->dh &&
	     (!sae->tmp->own_commit_element_ffc ||
	      FUNC1(sae->tmp->own_commit_element_ffc,
				sae->tmp->peer_commit_element_ffc) != 0)) ||
	    (sae->tmp->ec &&
	     (!sae->tmp->own_commit_element_ecc ||
	      FUNC2(sae->tmp->ec,
				  sae->tmp->own_commit_element_ecc,
				  sae->tmp->peer_commit_element_ecc) != 0)))
		return WLAN_STATUS_SUCCESS; /* scalars/elements are different */

	/*
	 * This is a reflection attack - return special value to trigger caller
	 * to silently discard the frame instead of replying with a specific
	 * status code.
	 */
	return SAE_SILENTLY_DISCARD;
}