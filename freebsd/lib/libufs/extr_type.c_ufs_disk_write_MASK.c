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
struct uufsd {int d_mine; int d_fd; int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uufsd*,char*) ; 
 int MINE_WRITE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct uufsd *disk)
{
	int fd;

	FUNC0(disk, NULL);

	if (disk->d_mine & MINE_WRITE)
		return (0);

	fd = FUNC2(disk->d_name, O_RDWR);
	if (fd < 0) {
		FUNC0(disk, "failed to open disk for writing");
		return (-1);
	}

	FUNC1(disk->d_fd);
	disk->d_fd = fd;
	disk->d_mine |= MINE_WRITE;

	return (0);
}