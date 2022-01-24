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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EPIPE ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_SYSTEM_ERROR ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sshbuf*) ; 
 struct sshbuf* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sshbuf*) ; 
 int FUNC6 (struct sshkey const*,struct sshbuf*) ; 

int
FUNC7(const struct sshkey *key, FILE *f)
{
	struct sshbuf *b = NULL;
	int r = SSH_ERR_INTERNAL_ERROR;

	if ((b = FUNC4()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((r = FUNC6(key, b)) != 0)
		goto out;
	if (FUNC1(FUNC5(b), FUNC3(b), 1, f) != 1) {
		if (FUNC0(f))
			errno = EPIPE;
		r = SSH_ERR_SYSTEM_ERROR;
		goto out;
	}
	/* Success */
	r = 0;
 out:
	FUNC2(b);
	return r;
}