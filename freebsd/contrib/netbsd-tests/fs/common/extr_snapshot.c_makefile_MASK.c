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
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int,int) ; 

__attribute__((used)) static void
FUNC3(const char *path)
{
	int fd;

	fd = FUNC2(path, O_CREAT | O_RDWR, 0777);
	if (fd == -1)
		FUNC0("create %s", path);
	FUNC1(fd);
}