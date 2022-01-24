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
 char* FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

char *
FUNC3(const char *filename, char *buf, off_t ofs, off_t len)
{
	char *ret;
	int e, fd;

	fd = FUNC2(filename, O_RDONLY);
	if (fd < 0)
		return NULL;
	ret = FUNC0(fd, buf, ofs, len);
	e = errno;
	FUNC1 (fd);
	errno = e;
	return ret;
}