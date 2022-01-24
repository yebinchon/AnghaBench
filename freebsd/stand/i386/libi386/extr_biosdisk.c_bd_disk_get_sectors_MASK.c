#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  d_unit; int /*<<< orphan*/  d_dev; } ;
struct disk_devdesc {scalar_t__ d_offset; int /*<<< orphan*/  d_partition; int /*<<< orphan*/  d_slice; TYPE_3__ dd; } ;
struct TYPE_4__ {int bd_sectors; int bd_sectorsize; } ;
typedef  TYPE_1__ bdinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  D_PARTNONE ; 
 int /*<<< orphan*/  D_SLICENONE ; 
 TYPE_1__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct disk_devdesc*) ; 
 int /*<<< orphan*/  FUNC2 (struct disk_devdesc*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct disk_devdesc*,int,int) ; 

__attribute__((used)) static uint64_t
FUNC4(struct disk_devdesc *dev)
{
	bdinfo_t *bd;
	struct disk_devdesc disk;
	uint64_t size;

	bd = FUNC0(&dev->dd);
	if (bd == NULL)
		return (0);

	disk.dd.d_dev = dev->dd.d_dev;
	disk.dd.d_unit = dev->dd.d_unit;
	disk.d_slice = D_SLICENONE;
	disk.d_partition = D_PARTNONE;
	disk.d_offset = 0;

	size = bd->bd_sectors * bd->bd_sectorsize;
	if (FUNC3(&disk, size, bd->bd_sectorsize) == 0) {
		(void) FUNC2(&disk, DIOCGMEDIASIZE, &size);
		FUNC1(&disk);
	}
	return (size / bd->bd_sectorsize);
}