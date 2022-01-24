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
 int O_CREAT ; 
 int O_WRONLY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int FUNC0 (int) ; 
 int FUNC1 (char const*,int,int) ; 

int
FUNC2(const char *file)
{
	int fd;

	fd = FUNC1(file, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
	if (fd < 0) {
		return -1;
	}
	return FUNC0(fd);
}