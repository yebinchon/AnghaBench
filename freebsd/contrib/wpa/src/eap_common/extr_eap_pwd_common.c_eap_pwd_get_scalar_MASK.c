#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_bignum {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  group; } ;
typedef  TYPE_1__ EAP_PWD_group ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (struct crypto_bignum*,struct crypto_bignum const*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_bignum*,int /*<<< orphan*/ ) ; 
 struct crypto_bignum* FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC3 (struct crypto_bignum*) ; 
 scalar_t__ FUNC4 (struct crypto_bignum*) ; 
 struct crypto_bignum* FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

struct crypto_bignum * FUNC8(EAP_PWD_group *group, const u8 *buf)
{
	struct crypto_bignum *scalar;
	const struct crypto_bignum *order;
	size_t order_len;

	order = FUNC5(group->group);
	order_len = FUNC6(group->group);

	/* RFC 5931, 2.8.5.2: 1 < scalar < r */
	scalar = FUNC2(buf, order_len);
	if (!scalar || FUNC4(scalar) ||
	    FUNC3(scalar) ||
	    FUNC0(scalar, order) >= 0) {
		FUNC7(MSG_INFO, "EAP-pwd: received scalar is invalid");
		FUNC1(scalar, 0);
		scalar = NULL;
	}

	return scalar;
}