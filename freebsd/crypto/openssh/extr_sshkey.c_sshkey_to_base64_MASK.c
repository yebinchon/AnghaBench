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
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*) ; 
 struct sshbuf* FUNC3 () ; 
 int FUNC4 (struct sshkey const*,struct sshbuf*) ; 

int
FUNC5(const struct sshkey *key, char **b64p)
{
	int r = SSH_ERR_INTERNAL_ERROR;
	struct sshbuf *b = NULL;
	char *uu = NULL;

	if (b64p != NULL)
		*b64p = NULL;
	if ((b = FUNC3()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((r = FUNC4(key, b)) != 0)
		goto out;
	if ((uu = FUNC1(b)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	/* Success */
	if (b64p != NULL) {
		*b64p = uu;
		uu = NULL;
	}
	r = 0;
 out:
	FUNC2(b);
	FUNC0(uu);
	return r;
}