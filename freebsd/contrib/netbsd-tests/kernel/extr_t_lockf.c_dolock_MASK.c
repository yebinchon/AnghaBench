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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int errno ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(int fd, int op, off_t lk_off, off_t lk_size)
{
	off_t result;
	int ret;

	result = FUNC2(fd, lk_off, SEEK_SET);
	if (result == -1) {
		return errno;
	}
	FUNC0(result == lk_off, "lseek to wrong offset");
	ret = FUNC1(fd, op, lk_size);
	if (ret == -1) {
		return errno;
	}
	return 0;
}