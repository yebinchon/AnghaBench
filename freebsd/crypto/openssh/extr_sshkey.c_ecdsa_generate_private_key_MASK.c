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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENSSL_EC_NAMED_CURVE ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_KEY_LENGTH ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(u_int bits, int *nid, EC_KEY **ecdsap)
{
	EC_KEY *private;
	int ret = SSH_ERR_INTERNAL_ERROR;

	if (nid == NULL || ecdsap == NULL)
		return SSH_ERR_INVALID_ARGUMENT;
	if ((*nid = FUNC4(bits)) == -1)
		return SSH_ERR_KEY_LENGTH;
	*ecdsap = NULL;
	if ((private = FUNC2(*nid)) == NULL) {
		ret = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if (FUNC1(private) != 1) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	FUNC3(private, OPENSSL_EC_NAMED_CURVE);
	*ecdsap = private;
	private = NULL;
	ret = 0;
 out:
	FUNC0(private);
	return ret;
}