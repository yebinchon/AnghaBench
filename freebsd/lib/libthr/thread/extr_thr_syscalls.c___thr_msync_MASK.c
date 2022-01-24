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

/* Variables and functions */
 int FUNC0 (void*,size_t,int) ; 
 struct pthread* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,int) ; 

__attribute__((used)) static int
FUNC4(void *addr, size_t len, int flags)
{
	struct pthread *curthread;
	int ret;

	curthread = FUNC1();
	FUNC2(curthread, 0);
	ret = FUNC0(addr, len, flags);
	FUNC3(curthread, 1);

	return (ret);
}