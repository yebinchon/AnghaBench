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
struct pthread {int dummy; } ;
typedef  struct pthread* pthread_t ;
typedef  int lwpid_t ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_LEVEL_WHICH ; 
 int /*<<< orphan*/  CPU_WHICH_TID ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,struct pthread*) ; 
 int FUNC1 (struct pthread*) ; 
 struct pthread* FUNC2 () ; 
 int FUNC3 (struct pthread*,struct pthread*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/  const*) ; 
 int errno ; 

int
FUNC5(pthread_t td, size_t cpusetsize, const cpuset_t *cpusetp)
{
	struct pthread	*curthread = FUNC2();
	lwpid_t		tid;
	int		error;

	if (td == curthread) {
		error = FUNC4(CPU_LEVEL_WHICH, CPU_WHICH_TID,
			-1, cpusetsize, cpusetp);
		if (error == -1)
			error = errno;
	} else if ((error = FUNC3(curthread, td, 0)) == 0) {
		tid = FUNC1(td);
		error = FUNC4(CPU_LEVEL_WHICH, CPU_WHICH_TID, tid,
			cpusetsize, cpusetp);
		if (error == -1)
			error = errno;
		FUNC0(curthread, td);
	}
	return (error);
}