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

/* Variables and functions */
 int MP_OKAY ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int FUNC8(const struct crypto_bignum *a,
			   const struct crypto_bignum *p)
{
	mp_int t;
	int ret;
	int res = -2;

	if (FUNC0())
		return -2;

	if (FUNC3(&t) != MP_OKAY)
		return -2;

	/* t = (p-1) / 2 */
	ret = FUNC7((mp_int *) p, 1, &t);
	if (ret == MP_OKAY)
		FUNC6(&t, 1);
	if (ret == MP_OKAY)
		ret = FUNC2((mp_int *) a, &t, (mp_int *) p, &t);
	if (ret == MP_OKAY) {
		if (FUNC4(&t))
			res = 1;
		else if (FUNC5(&t))
			res = 0;
		else
			res = -1;
	}

	FUNC1(&t);
	return res;
}