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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 () ; 

int FUNC2(struct crypto_bignum *r, const struct crypto_bignum *m)
{
	if (FUNC1())
		return -1;
	return FUNC0((BIGNUM *) r, (const BIGNUM *) m) == 1 ? 0 : -1;
}