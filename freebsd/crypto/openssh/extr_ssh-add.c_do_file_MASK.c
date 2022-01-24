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
 int FUNC0 (int,char*,int,int) ; 
 int FUNC1 (int,char*,int,int) ; 

__attribute__((used)) static int
FUNC2(int agent_fd, int deleting, int key_only, char *file, int qflag)
{
	if (deleting) {
		if (FUNC1(agent_fd, file, key_only, qflag) == -1)
			return -1;
	} else {
		if (FUNC0(agent_fd, file, key_only, qflag) == -1)
			return -1;
	}
	return 0;
}