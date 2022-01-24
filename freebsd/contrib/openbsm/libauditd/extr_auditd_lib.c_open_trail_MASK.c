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
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDONLY ; 
 int S_IRGRP ; 
 int S_IRUSR ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 scalar_t__ FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(char *fname, gid_t gid, int *errorp)
{
	int fd;

	/* XXXPJD: What should we do if the file already exists? */
	fd = FUNC5(fname, O_RDONLY | O_CREAT, S_IRUSR);
	if (fd < 0)
		return (-1);
	if (FUNC4(fd, -1, gid) < 0 || FUNC3(fd, S_IRUSR | S_IRGRP) < 0) {
		(void) FUNC2(fd);
		(void) FUNC6(fname);
		return (-1);
	}
	(void) FUNC2(fd);
	if (FUNC0(fname) < 0) {
		*errorp = errno;
		(void) FUNC6(fname);
		return (-1);
	}
	(void) FUNC1(fname);
	return (0);
}