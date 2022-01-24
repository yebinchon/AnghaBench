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
typedef  int /*<<< orphan*/  mpz_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(const u8 *base, size_t base_len,
		   const u8 *power, size_t power_len,
		   const u8 *modulus, size_t modulus_len,
		   u8 *result, size_t *result_len)
{
	mpz_t bn_base, bn_exp, bn_modulus, bn_result;
	int ret = -1;
	size_t len;

	FUNC3(bn_base, bn_exp, bn_modulus, bn_result, NULL);
	FUNC2(bn_base, base_len, 1, 1, 1, 0, base);
	FUNC2(bn_exp, power_len, 1, 1, 1, 0, power);
	FUNC2(bn_modulus, modulus_len, 1, 1, 1, 0, modulus);

	FUNC4(bn_result, bn_base, bn_exp, bn_modulus);
	len = FUNC5(bn_result, 2);
	len = (len + 7) / 8;
	if (*result_len < len)
		goto error;
	FUNC1(result, result_len, 1, 1, 1, 0, bn_result);
	ret = 0;

error:
	FUNC0(bn_base, bn_exp, bn_modulus, bn_result, NULL);
	return ret;
}