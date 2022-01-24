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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,char*,size_t) ; 

__attribute__((used)) static int
FUNC3(char *fname, char *buf, size_t count)
{
    int fd;
    fd = FUNC1(fname, O_RDONLY);
    if (fd == -1) {
        return -1;
    }
    if (FUNC2(fd, buf, count) != (ssize_t)count) {
        FUNC0(fd);
        return -2;
    }
    FUNC0(fd);
    return 0;
}