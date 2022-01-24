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
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int
FUNC7(DH *dh, int need)
{
	int pbits;
	const BIGNUM *dh_p, *pub_key;

	FUNC3(dh, &dh_p, NULL, NULL);

	if (need < 0 || dh_p == NULL ||
	    (pbits = FUNC0(dh_p)) <= 0 ||
	    need > INT_MAX / 2 || 2 * need > pbits)
		return SSH_ERR_INVALID_ARGUMENT;
	if (need < 256)
		need = 256;
	/*
	 * Pollard Rho, Big step/Little Step attacks are O(sqrt(n)),
	 * so double requested need here.
	 */
	if (!FUNC4(dh, FUNC5(need * 2, pbits - 1)))
		return SSH_ERR_LIBCRYPTO_ERROR;

	if (FUNC1(dh) == 0)
		return SSH_ERR_LIBCRYPTO_ERROR;
	FUNC2(dh, &pub_key, NULL);
	if (!FUNC6(dh, pub_key))
		return SSH_ERR_INVALID_FORMAT;
	return 0;
}