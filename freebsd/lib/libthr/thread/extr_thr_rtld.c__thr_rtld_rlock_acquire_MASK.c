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
struct rtld_lock {int /*<<< orphan*/  lock; } ;
struct pthread {int /*<<< orphan*/  rdlock_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 struct pthread* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *lock)
{
	struct pthread		*curthread;
	struct rtld_lock	*l;
	int			errsave;

	curthread = FUNC3();
	FUNC1();
	l = (struct rtld_lock *)lock;

	FUNC2(curthread);
	while (FUNC4(&l->lock, 0, NULL) != 0)
		;
	curthread->rdlock_count++;
	FUNC0();
}