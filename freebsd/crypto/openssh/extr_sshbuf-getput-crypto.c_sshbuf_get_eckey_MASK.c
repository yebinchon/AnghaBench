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
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int FUNC6 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sshbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sshbuf*,int /*<<< orphan*/  const**,size_t*) ; 

int
FUNC9(struct sshbuf *buf, EC_KEY *v)
{
	EC_POINT *pt = FUNC3(FUNC0(v));
	int r;
	const u_char *d;
	size_t len;

	if (pt == NULL) {
		FUNC5(("SSH_ERR_ALLOC_FAIL"));
		return SSH_ERR_ALLOC_FAIL;
	}
	if ((r = FUNC8(buf, &d, &len)) < 0) {
		FUNC2(pt);
		return r;
	}
	if ((r = FUNC6(d, len, pt, FUNC0(v))) != 0) {
		FUNC2(pt);
		return r;
	}
	if (FUNC1(v, pt) != 1) {
		FUNC2(pt);
		return SSH_ERR_ALLOC_FAIL; /* XXX assumption */
	}
	FUNC2(pt);
	/* Skip string */
	if (FUNC7(buf, NULL, NULL) != 0) {
		/* Shouldn't happen */
		FUNC5(("SSH_ERR_INTERNAL_ERROR"));
		FUNC4();
		return SSH_ERR_INTERNAL_ERROR;
	}
	return 0;	
}