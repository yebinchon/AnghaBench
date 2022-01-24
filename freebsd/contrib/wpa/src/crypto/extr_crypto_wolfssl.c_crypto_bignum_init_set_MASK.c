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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_bignum {int dummy; } ;
typedef  int /*<<< orphan*/  mp_int ;

/* Variables and functions */
 scalar_t__ MP_OKAY ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct crypto_bignum * FUNC4(const u8 *buf, size_t len)
{
	mp_int *a;

	if (FUNC0())
		return NULL;

	a = (mp_int *) FUNC1();
	if (!a)
		return NULL;

	if (FUNC2(a, buf, len) != MP_OKAY) {
		FUNC3(a);
		a = NULL;
	}

	return (struct crypto_bignum *) a;
}