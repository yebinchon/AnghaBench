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

/* Variables and functions */
 scalar_t__ EBADF ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  TIOCPTMASTER ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 

__attribute__((used)) static int
FUNC1(int fildes)
{

	if (FUNC0(fildes, TIOCPTMASTER) == 0)
		return (0);

	if (errno != EBADF)
		errno = EINVAL;

	return (-1);
}