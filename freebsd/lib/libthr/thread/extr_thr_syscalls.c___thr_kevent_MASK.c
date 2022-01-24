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
struct kevent {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,struct kevent const*,int,struct kevent*,int,struct timespec const*) ; 
 struct pthread* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,int) ; 

__attribute__((used)) static int
FUNC4(int kq, const struct kevent *changelist, int nchanges,
    struct kevent *eventlist, int nevents, const struct timespec *timeout)
{
	struct pthread *curthread;
	int ret;

	if (nevents == 0) {
		/*
		 * No blocking, do not make the call cancellable.
		 */
		return (FUNC0(kq, changelist, nchanges, eventlist,
		    nevents, timeout));
	}
	curthread = FUNC1();
	FUNC2(curthread);
	ret = FUNC0(kq, changelist, nchanges, eventlist, nevents,
	    timeout);
	FUNC3(curthread, ret == -1 && nchanges == 0);

	return (ret);
}