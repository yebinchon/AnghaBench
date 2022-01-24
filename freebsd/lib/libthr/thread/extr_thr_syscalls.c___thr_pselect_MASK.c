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
struct timespec {int dummy; } ;
struct pthread {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec const*,int /*<<< orphan*/  const*) ; 
 struct pthread* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,int) ; 

__attribute__((used)) static int
FUNC4(int count, fd_set *rfds, fd_set *wfds, fd_set *efds, 
	const struct timespec *timo, const sigset_t *mask)
{
	struct pthread *curthread;
	int ret;

	curthread = FUNC1();
	FUNC2(curthread);
	ret = FUNC0(count, rfds, wfds, efds, timo, mask);
	FUNC3(curthread, ret == -1);

	return (ret);
}