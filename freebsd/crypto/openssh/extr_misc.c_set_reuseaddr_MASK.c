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
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(int fd)
{
	int on = 1;

	if (FUNC1(fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) == -1) {
		FUNC0("setsockopt SO_REUSEADDR fd %d: %s", fd, FUNC2(errno));
		return -1;
	}
	return 0;
}