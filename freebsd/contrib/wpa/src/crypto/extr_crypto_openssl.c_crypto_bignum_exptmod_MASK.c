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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 

int FUNC4(const struct crypto_bignum *a,
			  const struct crypto_bignum *b,
			  const struct crypto_bignum *c,
			  struct crypto_bignum *d)
{
	int res;
	BN_CTX *bnctx;

	if (FUNC3())
		return -1;

	bnctx = FUNC1();
	if (bnctx == NULL)
		return -1;
	res = FUNC2((BIGNUM *) d, (const BIGNUM *) a,
					(const BIGNUM *) b, (const BIGNUM *) c,
					bnctx, NULL);
	FUNC0(bnctx);

	return res ? 0 : -1;
}