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
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int FUNC0 (int,int,char*) ; 

int
FUNC1(int fildes, int req, char *arg) {
	int trys;
	int ret;

	for (trys = 0; trys < 3; trys++) {
		if ((ret = FUNC0(fildes, req, arg)) < 0) {
			if (errno == EINTR)
				continue;
		}
		break;
	}
	return (ret);
}