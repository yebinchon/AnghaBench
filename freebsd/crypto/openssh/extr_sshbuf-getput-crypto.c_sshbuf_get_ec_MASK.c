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
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (struct sshbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sshbuf*,int /*<<< orphan*/  const**,size_t*) ; 

int
FUNC5(struct sshbuf *buf, EC_POINT *v, const EC_GROUP *g)
{
	const u_char *d;
	size_t len;
	int r;

	if ((r = FUNC4(buf, &d, &len)) < 0)
		return r;
	if ((r = FUNC2(d, len, v, g)) != 0)
		return r;
	/* Skip string */
	if (FUNC3(buf, NULL, NULL) != 0) {
		/* Shouldn't happen */
		FUNC1(("SSH_ERR_INTERNAL_ERROR"));
		FUNC0();
		return SSH_ERR_INTERNAL_ERROR;
	}
	return 0;
}