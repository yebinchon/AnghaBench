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
typedef  int /*<<< orphan*/  to ;
typedef  int time_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static time_t
FUNC1(void)
{
	int	to;
	size_t	to_size = sizeof(to);

	if (FUNC0("net.bluetooth.hci.command_timeout",
			 &to, &to_size, NULL, 0) < 0)
		return (-1);

	/* Should not happen */
	if (to <= 0) {
		errno = ERANGE;
		return (-1);
	}

	return ((time_t)to);
}