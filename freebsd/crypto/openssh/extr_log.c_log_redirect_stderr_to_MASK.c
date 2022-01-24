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
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int log_stderr_fd ; 
 int FUNC2 (char const*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(const char *logfile)
{
	int fd;

	if ((fd = FUNC2(logfile, O_WRONLY|O_CREAT|O_APPEND, 0600)) == -1) {
		FUNC1(stderr, "Couldn't open logfile %s: %s\n", logfile,
		     FUNC3(errno));
		FUNC0(1);
	}
	log_stderr_fd = fd;
}