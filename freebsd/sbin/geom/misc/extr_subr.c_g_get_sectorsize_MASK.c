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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

unsigned int
FUNC3(const char *name)
{
	ssize_t sectorsize;
	int fd;

	fd = FUNC1(name, 0);
	if (fd == -1)
		return (0);
	sectorsize = FUNC2(fd);
	if (sectorsize == -1)
		sectorsize = 0;
	(void)FUNC0(fd);
	return ((unsigned int)sectorsize);
}