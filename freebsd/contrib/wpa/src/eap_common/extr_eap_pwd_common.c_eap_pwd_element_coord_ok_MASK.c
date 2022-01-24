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

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_bignum*,struct crypto_bignum const*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_bignum*,int /*<<< orphan*/ ) ; 
 struct crypto_bignum* FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC3 (struct crypto_bignum*) ; 

__attribute__((used)) static int FUNC4(const struct crypto_bignum *prime,
				    const u8 *buf, size_t len)
{
	struct crypto_bignum *val;
	int ok = 1;

	val = FUNC2(buf, len);
	if (!val || FUNC3(val) ||
	    FUNC0(val, prime) >= 0)
		ok = 0;
	FUNC1(val, 0);
	return ok;
}