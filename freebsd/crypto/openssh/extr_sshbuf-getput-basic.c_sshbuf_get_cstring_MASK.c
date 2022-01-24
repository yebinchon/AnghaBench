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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_FORMAT ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC4 (struct sshbuf*,int /*<<< orphan*/  const**,size_t*) ; 
 int FUNC5 (struct sshbuf*) ; 

int
FUNC6(struct sshbuf *buf, char **valp, size_t *lenp)
{
	size_t len;
	const u_char *p, *z;
	int r;

	if (valp != NULL)
		*valp = NULL;
	if (lenp != NULL)
		*lenp = 0;
	if ((r = FUNC4(buf, &p, &len)) != 0)
		return r;
	/* Allow a \0 only at the end of the string */
	if (len > 0 &&
	    (z = FUNC2(p , '\0', len)) != NULL && z < p + len - 1) {
		FUNC0(("SSH_ERR_INVALID_FORMAT"));
		return SSH_ERR_INVALID_FORMAT;
	}
	if ((r = FUNC5(buf)) != 0)
		return -1;
	if (valp != NULL) {
		if ((*valp = FUNC1(len + 1)) == NULL) {
			FUNC0(("SSH_ERR_ALLOC_FAIL"));
			return SSH_ERR_ALLOC_FAIL;
		}
		if (len != 0)
			FUNC3(*valp, p, len);
		(*valp)[len] = '\0';
	}
	if (lenp != NULL)
		*lenp = (size_t)len;
	return 0;
}