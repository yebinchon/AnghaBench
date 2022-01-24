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
struct crypto_bignum {int dummy; } ;
typedef  int /*<<< orphan*/  mp_int ;
typedef  int /*<<< orphan*/  WC_RNG ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct crypto_bignum *r, const struct crypto_bignum *m)
{
	int ret = 0;
	WC_RNG rng;

	if (FUNC0())
		return -1;
	if (FUNC5(&rng) != 0)
		return -1;
	if (FUNC3((mp_int *) r,
			  (FUNC1((mp_int *) m) + 7) / 8 * 2,
			  &rng, NULL) != 0)
		ret = -1;
	if (ret == 0 &&
	    FUNC2((mp_int *) r, (mp_int *) m, (mp_int *) r) != 0)
		ret = -1;
	FUNC4(&rng);
	return ret;
}