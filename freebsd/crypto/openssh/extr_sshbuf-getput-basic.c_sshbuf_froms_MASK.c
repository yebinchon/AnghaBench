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
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int FUNC0 (struct sshbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf*) ; 
 struct sshbuf* FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int FUNC3 (struct sshbuf*,int /*<<< orphan*/  const**,size_t*) ; 
 int FUNC4 (struct sshbuf*,struct sshbuf*) ; 

int
FUNC5(struct sshbuf *buf, struct sshbuf **bufp)
{
	const u_char *p;
	size_t len;
	struct sshbuf *ret;
	int r;

	if (buf == NULL || bufp == NULL)
		return SSH_ERR_INVALID_ARGUMENT;
	*bufp = NULL;
	if ((r = FUNC3(buf, &p, &len)) != 0)
		return r;
	if ((ret = FUNC2(p, len)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((r = FUNC0(buf, len + 4)) != 0 ||  /* Shouldn't happen */
	    (r = FUNC4(ret, buf)) != 0) {
		FUNC1(ret);
		return r;
	}
	*bufp = ret;
	return 0;
}