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
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  RETSIGTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* current_state ; 
 char* current_test ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static RETSIGTYPE
FUNC5(int sig)
{
    int fd;
    char msg[] = "SIGSEGV i current test: ";

    fd = FUNC2("/dev/stdout", O_WRONLY, 0600);
    if (fd >= 0) {
	FUNC4(fd, msg, sizeof(msg));
	FUNC4(fd, current_test, FUNC3(current_test));
	FUNC4(fd, " ", 1);
	FUNC4(fd, current_state, FUNC3(current_state));
	FUNC4(fd, "\n", 1);
	FUNC1(fd);
    }
    FUNC0(1);
}