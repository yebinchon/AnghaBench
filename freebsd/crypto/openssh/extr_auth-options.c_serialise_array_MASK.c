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
struct sshbuf {int dummy; } ;

/* Variables and functions */
 size_t INT_MAX ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct sshbuf*) ; 
 struct sshbuf* FUNC1 () ; 
 int FUNC2 (struct sshbuf*,char*) ; 
 int FUNC3 (struct sshbuf*,struct sshbuf*) ; 
 int FUNC4 (struct sshbuf*,size_t) ; 

__attribute__((used)) static int
FUNC5(struct sshbuf *m, char **a, size_t n)
{
	struct sshbuf *b;
	size_t i;
	int r;

	if (n > INT_MAX)
		return SSH_ERR_INTERNAL_ERROR;

	if ((b = FUNC1()) == NULL) {
		return SSH_ERR_ALLOC_FAIL;
	}
	for (i = 0; i < n; i++) {
		if ((r = FUNC2(b, a[i])) != 0) {
			FUNC0(b);
			return r;
		}
	}
	if ((r = FUNC4(m, n)) != 0 ||
	    (r = FUNC3(m, b)) != 0) {
		FUNC0(b);
		return r;
	}
	/* success */
	return 0;
}