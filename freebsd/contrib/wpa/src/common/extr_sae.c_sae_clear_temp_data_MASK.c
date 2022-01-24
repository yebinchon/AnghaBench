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
struct sae_temporary_data {int /*<<< orphan*/  pw_id; int /*<<< orphan*/  anti_clogging_token; int /*<<< orphan*/  peer_commit_element_ecc; int /*<<< orphan*/  own_commit_element_ecc; int /*<<< orphan*/  pwe_ecc; int /*<<< orphan*/  peer_commit_element_ffc; int /*<<< orphan*/  own_commit_element_ffc; int /*<<< orphan*/  own_commit_scalar; int /*<<< orphan*/  pwe_ffc; int /*<<< orphan*/  sae_rand; int /*<<< orphan*/  order_buf; int /*<<< orphan*/  prime_buf; int /*<<< orphan*/  ec; } ;
struct sae_data {struct sae_temporary_data* tmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sae_temporary_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct sae_data *sae)
{
	struct sae_temporary_data *tmp;
	if (sae == NULL || sae->tmp == NULL)
		return;
	tmp = sae->tmp;
	FUNC2(tmp->ec);
	FUNC1(tmp->prime_buf, 0);
	FUNC1(tmp->order_buf, 0);
	FUNC1(tmp->sae_rand, 1);
	FUNC1(tmp->pwe_ffc, 1);
	FUNC1(tmp->own_commit_scalar, 0);
	FUNC1(tmp->own_commit_element_ffc, 0);
	FUNC1(tmp->peer_commit_element_ffc, 0);
	FUNC3(tmp->pwe_ecc, 1);
	FUNC3(tmp->own_commit_element_ecc, 0);
	FUNC3(tmp->peer_commit_element_ecc, 0);
	FUNC5(tmp->anti_clogging_token);
	FUNC4(tmp->pw_id);
	FUNC0(tmp, sizeof(*tmp));
	sae->tmp = NULL;
}