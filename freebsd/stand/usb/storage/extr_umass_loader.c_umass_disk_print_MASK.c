#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct disk_devdesc {int /*<<< orphan*/  d_partition; int /*<<< orphan*/  d_slice; scalar_t__ d_unit; TYPE_1__* d_dev; } ;
typedef  int /*<<< orphan*/  dev ;
struct TYPE_2__ {char* dv_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PARTNONE ; 
 int /*<<< orphan*/  D_SLICENONE ; 
 int /*<<< orphan*/  FUNC0 (struct disk_devdesc*) ; 
 scalar_t__ FUNC1 (struct disk_devdesc*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct disk_devdesc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ ret ; 
 TYPE_1__ umass_disk ; 
 scalar_t__ FUNC5 (struct disk_devdesc*) ; 

__attribute__((used)) static int
FUNC6(int verbose)
{
	struct disk_devdesc dev;

	FUNC4("%s devices:", umass_disk.dv_name);
	if (FUNC3("\n") != 0)
		return (1);

	FUNC2(&dev, 0, sizeof(dev));

	ret = FUNC3("    umass0   UMASS device\n");
	if (ret != 0)
		return (ret);
	dev.d_dev = &umass_disk;
	dev.d_unit = 0;
	dev.d_slice = D_SLICENONE;
	dev.d_partition = D_PARTNONE;

	if (FUNC5(&dev) == 0) {
		ret = FUNC1(&dev, "    umass0", verbose);
		FUNC0(&dev);
	}
	return (ret);
}