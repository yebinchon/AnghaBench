#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int d_unit; TYPE_2__* d_dev; } ;
struct disk_devdesc {int /*<<< orphan*/  d_partition; int /*<<< orphan*/  d_slice; TYPE_1__ dd; } ;
typedef  int /*<<< orphan*/  line ;
struct TYPE_6__ {int /*<<< orphan*/  sectorsize; int /*<<< orphan*/  mediasize; } ;
struct TYPE_5__ {char* dv_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PARTNONE ; 
 int /*<<< orphan*/  D_SLICENONE ; 
 int /*<<< orphan*/  FUNC0 (struct disk_devdesc*) ; 
 scalar_t__ FUNC1 (struct disk_devdesc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct disk_devdesc*,char*,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 TYPE_3__* ud_info ; 
 TYPE_2__ userboot_disk ; 
 int userdisk_maxunit ; 

__attribute__((used)) static int
FUNC6(int verbose)
{
	struct disk_devdesc dev;
	char line[80];
	int i, ret = 0;

	if (userdisk_maxunit == 0)
		return (0);

	FUNC4("%s devices:", userboot_disk.dv_name);
	if ((ret = FUNC3("\n")) != 0)
		return (ret);

	for (i = 0; i < userdisk_maxunit; i++) {
		FUNC5(line, sizeof(line),
		    "    disk%d:   Guest drive image\n", i);
		ret = FUNC3(line);
		if (ret != 0)
			break;
		dev.dd.d_dev = &userboot_disk;
		dev.dd.d_unit = i;
		dev.d_slice = D_SLICENONE;
		dev.d_partition = D_PARTNONE;
		if (FUNC1(&dev, ud_info[i].mediasize,
		    ud_info[i].sectorsize) == 0) {
			FUNC5(line, sizeof(line), "    disk%d", i);
			ret = FUNC2(&dev, line, verbose);
			FUNC0(&dev);
			if (ret != 0)
				break;
		}
	}
	return (ret);
}