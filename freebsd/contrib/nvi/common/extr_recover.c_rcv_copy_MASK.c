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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,int) ; 
 int FUNC3 (int,char*,int) ; 

__attribute__((used)) static int
FUNC4(
	SCR *sp,
	int wfd,
	char *fname)
{
	int nr, nw, off, rfd;
	char buf[8 * 1024];

	if ((rfd = FUNC1(fname, O_RDONLY, 0)) == -1)
		goto err;
	while ((nr = FUNC2(rfd, buf, sizeof(buf))) > 0)
		for (off = 0; nr; nr -= nw, off += nw)
			if ((nw = FUNC3(wfd, buf + off, nr)) < 0)
				goto err;
	if (nr == 0)
		return (0);

err:	FUNC0(sp, M_SYSERR, fname, "%s");
	return (1);
}