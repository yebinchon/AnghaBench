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
struct pthread {int flags; int /*<<< orphan*/  cycle; } ;

/* Variables and functions */
 int THR_FLAGS_NEED_SUSPEND ; 
 int THR_FLAGS_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct pthread *thread)
{
	/* Clear the suspend flag: */
	thread->flags &= ~(THR_FLAGS_NEED_SUSPEND | THR_FLAGS_SUSPENDED);
	thread->cycle++;
	FUNC0(&thread->cycle, 1, 0);
}