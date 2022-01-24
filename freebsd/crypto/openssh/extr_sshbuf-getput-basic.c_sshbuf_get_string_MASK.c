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
typedef  char u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (struct sshbuf*,char const**,size_t*) ; 

int
FUNC4(struct sshbuf *buf, u_char **valp, size_t *lenp)
{
	const u_char *val;
	size_t len;
	int r;

	if (valp != NULL)
		*valp = NULL;
	if (lenp != NULL)
		*lenp = 0;
	if ((r = FUNC3(buf, &val, &len)) < 0)
		return r;
	if (valp != NULL) {
		if ((*valp = FUNC1(len + 1)) == NULL) {
			FUNC0(("SSH_ERR_ALLOC_FAIL"));
			return SSH_ERR_ALLOC_FAIL;
		}
		if (len != 0)
			FUNC2(*valp, val, len);
		(*valp)[len] = '\0';
	}
	if (lenp != NULL)
		*lenp = len;
	return 0;
}