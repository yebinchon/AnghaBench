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
struct sshbuf {int size; int /*<<< orphan*/ * d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct sshbuf*,size_t) ; 

int
FUNC2(struct sshbuf *buf, size_t len, u_char **dpp)
{
	u_char *dp;
	int r;

	if (dpp != NULL)
		*dpp = NULL;

	FUNC0(("reserve buf = %p len = %zu", buf, len));
	if ((r = FUNC1(buf, len)) != 0)
		return r;

	dp = buf->d + buf->size;
	buf->size += len;
	if (dpp != NULL)
		*dpp = dp;
	return 0;
}