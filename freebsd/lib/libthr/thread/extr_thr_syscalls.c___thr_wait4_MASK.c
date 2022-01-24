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
struct rusage {int dummy; } ;
struct pthread {int dummy; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int*,int,struct rusage*) ; 
 struct pthread* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,int) ; 

__attribute__((used)) static pid_t
FUNC4(pid_t pid, int *status, int options, struct rusage *rusage)
{
	struct pthread *curthread;
	pid_t ret;

	curthread = FUNC1();
	FUNC2(curthread);
	ret = FUNC0(pid, status, options, rusage);
	FUNC3(curthread, ret <= 0);
	return (ret);
}