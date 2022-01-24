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
struct event_base {int /*<<< orphan*/ * th_notify_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct event_base *base)
{
	char buf[1];
	int r;
	buf[0] = (char) 0;
#ifdef _WIN32
	r = send(base->th_notify_fd[1], buf, 1, 0);
#else
	r = FUNC2(base->th_notify_fd[1], buf, 1);
#endif
	return (r < 0 && ! FUNC0(errno)) ? -1 : 0;
}