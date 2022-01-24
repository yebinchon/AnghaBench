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
struct sae_data {TYPE_1__* tmp; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {scalar_t__ own_commit_element_ffc; int /*<<< orphan*/  prime; int /*<<< orphan*/  pwe_ffc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct crypto_bignum*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct sae_data *sae,
					 struct crypto_bignum *mask)
{
	/* COMMIT-ELEMENT = inverse(scalar-op(mask, PWE)) */
	if (!sae->tmp->own_commit_element_ffc) {
		sae->tmp->own_commit_element_ffc = FUNC1();
		if (!sae->tmp->own_commit_element_ffc)
			return -1;
	}

	if (FUNC0(sae->tmp->pwe_ffc, mask, sae->tmp->prime,
				  sae->tmp->own_commit_element_ffc) < 0 ||
	    FUNC2(sae->tmp->own_commit_element_ffc,
				  sae->tmp->prime,
				  sae->tmp->own_commit_element_ffc) < 0) {
		FUNC3(MSG_DEBUG, "SAE: Could not compute commit-element");
		return -1;
	}

	return 0;
}