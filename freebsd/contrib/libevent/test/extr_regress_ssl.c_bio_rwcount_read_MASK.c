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
struct rwcount {int /*<<< orphan*/  read; int /*<<< orphan*/  fd; } ;
typedef  int ev_ssize_t ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 struct rwcount* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(BIO *b, char *out, int outlen)
{
	struct rwcount *rw = FUNC0(b);
	ev_ssize_t ret = FUNC4(rw->fd, out, outlen, 0);
	++rw->read;
	if (ret == -1 && FUNC2(FUNC3())) {
		FUNC1(b);
	}
	return ret;
}