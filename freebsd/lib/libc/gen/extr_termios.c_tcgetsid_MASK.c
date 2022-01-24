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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCGSID ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int*) ; 

pid_t
FUNC1(int fd)
{
	int s;

	if (FUNC0(fd, TIOCGSID, &s) < 0)
		return ((pid_t)-1);

	return ((pid_t)s);
}