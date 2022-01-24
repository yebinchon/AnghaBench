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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_bignum*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_bignum*) ; 
 scalar_t__ FUNC2 (struct crypto_bignum*,struct crypto_bignum const*) ; 

__attribute__((used)) static int FUNC3(struct crypto_bignum *val,
				       const struct crypto_bignum *order)
{
	return FUNC2(val, order) == 0 &&
		!FUNC1(val) &&
		!FUNC0(val);
}