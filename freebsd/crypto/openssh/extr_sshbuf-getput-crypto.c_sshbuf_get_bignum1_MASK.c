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
typedef  int u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t SSHBUF_MAX_BIGNUM ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_BIGNUM_TOO_LARGE ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_MESSAGE_INCOMPLETE ; 
 scalar_t__ FUNC4 (struct sshbuf*,int) ; 
 int FUNC5 (struct sshbuf*) ; 
 int /*<<< orphan*/ * FUNC6 (struct sshbuf*) ; 

int
FUNC7(struct sshbuf *buf, BIGNUM *v)
{
	const u_char *d = FUNC6(buf);
	u_int16_t len_bits;
	size_t len_bytes;

	/* Length in bits */
	if (FUNC5(buf) < 2)
		return SSH_ERR_MESSAGE_INCOMPLETE;
	len_bits = FUNC1(d);
	len_bytes = (len_bits + 7) >> 3;
	if (len_bytes > SSHBUF_MAX_BIGNUM)
		return SSH_ERR_BIGNUM_TOO_LARGE;
	if (FUNC5(buf) < 2 + len_bytes)
		return SSH_ERR_MESSAGE_INCOMPLETE;
	if (v != NULL && FUNC0(d + 2, len_bytes, v) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if (FUNC4(buf, 2 + len_bytes) != 0) {
		FUNC3(("SSH_ERR_INTERNAL_ERROR"));
		FUNC2();
		return SSH_ERR_INTERNAL_ERROR;
	}
	return 0;
}