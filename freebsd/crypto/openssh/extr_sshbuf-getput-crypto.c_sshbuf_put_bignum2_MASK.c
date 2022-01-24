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
typedef  int u_char ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  d ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int SSHBUF_MAX_BIGNUM ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int FUNC3 (struct sshbuf*,int*,int) ; 

int
FUNC4(struct sshbuf *buf, const BIGNUM *v)
{
	u_char d[SSHBUF_MAX_BIGNUM + 1];
	int len = FUNC1(v), prepend = 0, r;

	if (len < 0 || len > SSHBUF_MAX_BIGNUM)
		return SSH_ERR_INVALID_ARGUMENT;
	*d = '\0';
	if (FUNC0(v, d + 1) != len)
		return SSH_ERR_INTERNAL_ERROR; /* Shouldn't happen */
	/* If MSB is set, prepend a \0 */
	if (len > 0 && (d[1] & 0x80) != 0)
		prepend = 1;
	if ((r = FUNC3(buf, d + 1 - prepend, len + prepend)) < 0) {
		FUNC2(d, sizeof(d));
		return r;
	}
	FUNC2(d, sizeof(d));
	return 0;
}