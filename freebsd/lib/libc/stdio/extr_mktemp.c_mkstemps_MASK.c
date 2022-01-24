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
 int /*<<< orphan*/  AT_FDCWD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC1(char *path, int slen)
{
	int fd;

	return (FUNC0(AT_FDCWD, path, &fd, 0, slen, 0) ? fd : -1);
}