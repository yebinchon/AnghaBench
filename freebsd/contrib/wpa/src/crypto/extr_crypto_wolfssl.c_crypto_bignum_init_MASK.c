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
 scalar_t__ MP_OKAY ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

struct crypto_bignum * FUNC4(void)
{
	mp_int *a;

	if (FUNC0())
		return NULL;

	a = FUNC3(sizeof(*a));
	if (!a || FUNC1(a) != MP_OKAY) {
		FUNC2(a);
		a = NULL;
	}

	return (struct crypto_bignum *) a;
}