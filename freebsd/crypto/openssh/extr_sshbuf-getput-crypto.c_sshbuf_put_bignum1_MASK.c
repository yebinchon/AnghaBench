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
typedef  int /*<<< orphan*/  d ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int SSHBUF_MAX_BIGNUM ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (struct sshbuf*,size_t,int /*<<< orphan*/ **) ; 

int
FUNC6(struct sshbuf *buf, const BIGNUM *v)
{
	int r, len_bits = FUNC1(v);
	size_t len_bytes = (len_bits + 7) / 8;
	u_char d[SSHBUF_MAX_BIGNUM], *dp;

	if (len_bits < 0 || len_bytes > SSHBUF_MAX_BIGNUM)
		return SSH_ERR_INVALID_ARGUMENT;
	if (FUNC0(v, d) != (int)len_bytes)
		return SSH_ERR_INTERNAL_ERROR; /* Shouldn't happen */
	if ((r = FUNC5(buf, len_bytes + 2, &dp)) < 0) {
		FUNC3(d, sizeof(d));
		return r;
	}
	FUNC2(dp, len_bits);
	if (len_bytes != 0)
		FUNC4(dp + 2, d, len_bytes);
	FUNC3(d, sizeof(d));
	return 0;
}