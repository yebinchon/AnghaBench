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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int FUNC4 (int,int) ; 

int
FUNC5(int fd)
{
	pid_t s;

	s = FUNC3();
	if (s == -1)
		s = FUNC2(0);
	if (FUNC4(fd, s) == -1)
		return (-1);
	(void) FUNC1(fd, 0);
	(void) FUNC1(fd, 1);
	(void) FUNC1(fd, 2);
	if (fd > 2)
		(void) FUNC0(fd);
	return (0);
}