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
struct tube {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tube*) ; 
 int /*<<< orphan*/  FUNC1 (struct tube*) ; 
 int /*<<< orphan*/  FUNC2 (struct tube*) ; 
 int /*<<< orphan*/  FUNC3 (struct tube*) ; 
 int /*<<< orphan*/  FUNC4 (struct tube*) ; 

void FUNC5(struct tube* tube)
{
	if(!tube) return;
	FUNC3(tube);
	FUNC4(tube);
	/* close fds after deleting commpoints, to be sure.
	 *            Also epoll does not like closing fd before event_del */
	FUNC1(tube);
	FUNC2(tube);
	FUNC0(tube);
}