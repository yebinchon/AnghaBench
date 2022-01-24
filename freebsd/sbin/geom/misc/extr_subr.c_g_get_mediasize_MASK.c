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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

off_t
FUNC3(const char *name)
{
	off_t mediasize;
	int fd;

	fd = FUNC2(name, 0);
	if (fd == -1)
		return (0);
	mediasize = FUNC1(fd);
	if (mediasize == -1)
		mediasize = 0;
	(void)FUNC0(fd);
	return (mediasize);
}