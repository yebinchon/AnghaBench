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
struct stat {scalar_t__ st_size; } ;

/* Variables and functions */
 scalar_t__ BBSIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  bootarea ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct stat*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 char* xxboot ; 

__attribute__((used)) static void
FUNC6(void)
{
	int fd;
	struct stat st;

	if (xxboot == NULL)
		xxboot = "/boot/boot";
	fd = FUNC4(xxboot, O_RDONLY);
	if (fd < 0)
		FUNC1(1, "cannot open %s", xxboot);
	FUNC3(fd, &st);
	if (st.st_size <= BBSIZE) {
		if (FUNC5(fd, bootarea, st.st_size) != st.st_size)
			FUNC1(1, "read error %s", xxboot);
		FUNC0(fd);
		return;
	}
	FUNC2(1, "boot code %s is wrong size", xxboot);
}