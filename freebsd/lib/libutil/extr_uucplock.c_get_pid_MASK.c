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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int errno ; 
 int FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (char*,char**,int) ; 

__attribute__((used)) static pid_t
FUNC2(int fd, int *err)
{
	int bytes_read;
	char buf[32];
	pid_t pid;

	bytes_read = FUNC0 (fd, buf, sizeof (buf) - 1);
	if (bytes_read > 0) {
		buf[bytes_read] = '\0';
		pid = (pid_t)FUNC1 (buf, (char **) NULL, 10);
	} else {
		pid = -1;
		*err = bytes_read ? errno : EINVAL;
	}
	return pid;
}