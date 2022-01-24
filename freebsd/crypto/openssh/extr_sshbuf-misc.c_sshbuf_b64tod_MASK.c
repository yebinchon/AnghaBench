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
 int SSH_ERR_INVALID_FORMAT ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int FUNC4 (struct sshbuf*,int /*<<< orphan*/ *,int) ; 
 size_t FUNC5 (char const*) ; 

int
FUNC6(struct sshbuf *buf, const char *b64)
{
	size_t plen = FUNC5(b64);
	int nlen, r;
	u_char *p;

	if (plen == 0)
		return 0;
	if ((p = FUNC3(plen)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if ((nlen = FUNC0(b64, p, plen)) < 0) {
		FUNC1(p, plen);
		FUNC2(p);
		return SSH_ERR_INVALID_FORMAT;
	}
	if ((r = FUNC4(buf, p, nlen)) < 0) {
		FUNC1(p, plen);
		FUNC2(p);
		return r;
	}
	FUNC1(p, plen);
	FUNC2(p);
	return 0;
}