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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

int FUNC7(const u8 *base, size_t base_len,
		   const u8 *power, size_t power_len,
		   const u8 *modulus, size_t modulus_len,
		   u8 *result, size_t *result_len)
{
	BIGNUM *bn_base, *bn_exp, *bn_modulus, *bn_result;
	int ret = -1;
	BN_CTX *ctx;

	ctx = FUNC1();
	if (ctx == NULL)
		return -1;

	bn_base = FUNC2(base, base_len, NULL);
	bn_exp = FUNC2(power, power_len, NULL);
	bn_modulus = FUNC2(modulus, modulus_len, NULL);
	bn_result = FUNC6();

	if (bn_base == NULL || bn_exp == NULL || bn_modulus == NULL ||
	    bn_result == NULL)
		goto error;

	if (FUNC5(bn_result, bn_base, bn_exp, bn_modulus,
				      ctx, NULL) != 1)
		goto error;

	*result_len = FUNC3(bn_result, result);
	ret = 0;

error:
	FUNC4(bn_base);
	FUNC4(bn_exp);
	FUNC4(bn_modulus);
	FUNC4(bn_result);
	FUNC0(ctx);
	return ret;
}