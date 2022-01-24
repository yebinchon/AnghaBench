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
struct crypto_ec_point {int dummy; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  group; } ;
typedef  TYPE_1__ EAP_PWD_group ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 struct crypto_bignum* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ec_point*,int /*<<< orphan*/ ) ; 
 struct crypto_ec_point* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct crypto_ec_point*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct crypto_ec_point*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_bignum const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

struct crypto_ec_point * FUNC8(EAP_PWD_group *group,
					     const u8 *buf)
{
	struct crypto_ec_point *element;
	const struct crypto_bignum *prime;
	size_t prime_len;

	prime = FUNC0(group->group);
	prime_len = FUNC5(group->group);

	/* RFC 5931, 2.8.5.2.2: 0 < x,y < p */
	if (!FUNC6(prime, buf, prime_len) ||
	    !FUNC6(prime, buf + prime_len, prime_len)) {
		FUNC7(MSG_INFO, "EAP-pwd: Invalid coordinate in element");
		return NULL;
	}

	element = FUNC2(group->group, buf);
	if (!element) {
		FUNC7(MSG_INFO, "EAP-pwd: EC point from element failed");
		return NULL;
	}

	/* RFC 5931, 2.8.5.2.2: on curve and not the point at infinity */
	if (!FUNC4(group->group, element) ||
	    FUNC3(group->group, element)) {
		FUNC7(MSG_INFO, "EAP-pwd: Invalid element");
		goto fail;
	}

out:
	return element;
fail:
	FUNC1(element, 0);
	element = NULL;
	goto out;
}