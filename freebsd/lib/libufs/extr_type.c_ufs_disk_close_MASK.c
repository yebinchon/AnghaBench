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
struct uufsd {int d_fd; char* d_inoblock; int d_mine; char* d_sbcsum; int /*<<< orphan*/ * d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uufsd*,int /*<<< orphan*/ *) ; 
 int MINE_NAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(struct uufsd *disk)
{
	FUNC0(disk, NULL);
	FUNC1(disk->d_fd);
	disk->d_fd = -1;
	if (disk->d_inoblock != NULL) {
		FUNC2(disk->d_inoblock);
		disk->d_inoblock = NULL;
	}
	if (disk->d_mine & MINE_NAME) {
		FUNC2((char *)(uintptr_t)disk->d_name);
		disk->d_name = NULL;
	}
	if (disk->d_sbcsum != NULL) {
		FUNC2(disk->d_sbcsum);
		disk->d_sbcsum = NULL;
	}
	return (0);
}