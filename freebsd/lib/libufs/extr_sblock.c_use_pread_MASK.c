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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *devfd, off_t loc, void **bufp, int size)
{
	int fd;

	fd = *(int *)devfd;
	if ((*bufp = FUNC0(size)) == NULL)
		return (ENOSPC);
	if (FUNC1(fd, *bufp, size, loc) != size)
		return (EIO);
	return (0);
}