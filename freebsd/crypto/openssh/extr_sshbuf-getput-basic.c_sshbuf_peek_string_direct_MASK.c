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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SSHBUF_SIZE_MAX ; 
 int SSH_ERR_MESSAGE_INCOMPLETE ; 
 int SSH_ERR_STRING_TOO_LARGE ; 
 int FUNC2 (struct sshbuf const*) ; 
 int /*<<< orphan*/ * FUNC3 (struct sshbuf const*) ; 

int
FUNC4(const struct sshbuf *buf, const u_char **valp,
    size_t *lenp)
{
	u_int32_t len;
	const u_char *p = FUNC3(buf);

	if (valp != NULL)
		*valp = NULL;
	if (lenp != NULL)
		*lenp = 0;
	if (FUNC2(buf) < 4) {
		FUNC1(("SSH_ERR_MESSAGE_INCOMPLETE"));
		return SSH_ERR_MESSAGE_INCOMPLETE;
	}
	len = FUNC0(p);
	if (len > SSHBUF_SIZE_MAX - 4) {
		FUNC1(("SSH_ERR_STRING_TOO_LARGE"));
		return SSH_ERR_STRING_TOO_LARGE;
	}
	if (FUNC2(buf) - 4 < len) {
		FUNC1(("SSH_ERR_MESSAGE_INCOMPLETE"));
		return SSH_ERR_MESSAGE_INCOMPLETE;
	}
	if (valp != NULL)
		*valp = p + 4;
	if (lenp != NULL)
		*lenp = len;
	return 0;
}