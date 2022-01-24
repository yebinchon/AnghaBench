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
struct statfs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MNT_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct statfs*,long,int /*<<< orphan*/ ) ; 
 struct statfs* FUNC2 (size_t) ; 

size_t
FUNC3(struct statfs **mntbuf)
{
	static struct statfs *origbuf;
	size_t bufsize;
	int mntsize;

	mntsize = FUNC1(NULL, 0, MNT_NOWAIT);
	if (mntsize <= 0)
		return (0);
	bufsize = (mntsize + 1) * sizeof(struct statfs);
	if ((origbuf = FUNC2(bufsize)) == NULL)
		FUNC0(1, "malloc");
	mntsize = FUNC1(origbuf, (long)bufsize, MNT_NOWAIT);
	*mntbuf = origbuf;
	return (mntsize);
}