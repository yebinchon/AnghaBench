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
struct TYPE_2__ {scalar_t__ dh; scalar_t__ ec; void* own_commit_scalar; void* sae_rand; int /*<<< orphan*/  order; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_bignum*,int) ; 
 void* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,struct crypto_bignum*,void*) ; 
 scalar_t__ FUNC3 (struct sae_data*,struct crypto_bignum*) ; 
 scalar_t__ FUNC4 (struct sae_data*,struct crypto_bignum*) ; 

__attribute__((used)) static int FUNC5(struct sae_data *sae)
{
	struct crypto_bignum *mask;
	int ret;

	mask = FUNC1();
	if (!sae->tmp->sae_rand)
		sae->tmp->sae_rand = FUNC1();
	if (!sae->tmp->own_commit_scalar)
		sae->tmp->own_commit_scalar = FUNC1();
	ret = !mask || !sae->tmp->sae_rand || !sae->tmp->own_commit_scalar ||
		FUNC2(sae->tmp->order, sae->tmp->sae_rand,
					  mask,
					  sae->tmp->own_commit_scalar) < 0 ||
		(sae->tmp->ec &&
		 FUNC3(sae, mask) < 0) ||
		(sae->tmp->dh &&
		 FUNC4(sae, mask) < 0);
	FUNC0(mask, 1);
	return ret ? -1 : 0;
}