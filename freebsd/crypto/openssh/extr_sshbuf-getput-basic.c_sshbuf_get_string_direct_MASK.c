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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 scalar_t__ FUNC2 (struct sshbuf*,size_t) ; 
 int FUNC3 (struct sshbuf*,int /*<<< orphan*/  const**,size_t*) ; 

int
FUNC4(struct sshbuf *buf, const u_char **valp, size_t *lenp)
{
	size_t len;
	const u_char *p;
	int r;

	if (valp != NULL)
		*valp = NULL;
	if (lenp != NULL)
		*lenp = 0;
	if ((r = FUNC3(buf, &p, &len)) < 0)
		return r;
	if (valp != NULL)
		*valp = p;
	if (lenp != NULL)
		*lenp = len;
	if (FUNC2(buf, len + 4) != 0) {
		/* Shouldn't happen */
		FUNC1(("SSH_ERR_INTERNAL_ERROR"));
		FUNC0();
		return SSH_ERR_INTERNAL_ERROR;
	}
	return 0;
}