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
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 size_t FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POINT_CONVERSION_UNCOMPRESSED ; 
 int SSHBUF_MAX_ECPOINT ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (struct sshbuf*,int /*<<< orphan*/ *,size_t) ; 

int
FUNC5(struct sshbuf *buf, const EC_POINT *v, const EC_GROUP *g)
{
	u_char d[SSHBUF_MAX_ECPOINT];
	BN_CTX *bn_ctx;
	size_t len;
	int ret;

	if ((bn_ctx = FUNC1()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((len = FUNC2(g, v, POINT_CONVERSION_UNCOMPRESSED,
	    NULL, 0, bn_ctx)) > SSHBUF_MAX_ECPOINT) {
		FUNC0(bn_ctx);
		return SSH_ERR_INVALID_ARGUMENT;
	}
	if (FUNC2(g, v, POINT_CONVERSION_UNCOMPRESSED,
	    d, len, bn_ctx) != len) {
		FUNC0(bn_ctx);
		return SSH_ERR_INTERNAL_ERROR; /* Shouldn't happen */
	}
	FUNC0(bn_ctx);
	ret = FUNC4(buf, d, len);
	FUNC3(d, len);
	return ret;
}