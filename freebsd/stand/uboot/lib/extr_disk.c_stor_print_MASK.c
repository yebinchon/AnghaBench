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
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_5__ {char* dv_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PARTNONE ; 
 int /*<<< orphan*/  D_SLICENONE ; 
 TYPE_3__ FUNC0 (struct disk_devdesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct disk_devdesc*) ; 
 int FUNC2 (struct disk_devdesc*,char*,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int stor_info_no ; 
 scalar_t__ FUNC7 (struct disk_devdesc*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__ uboot_storage ; 

__attribute__((used)) static int
FUNC9(int verbose)
{
	struct disk_devdesc dev;
	static char line[80];
	int i, ret = 0;

	if (stor_info_no == 0)
		return (ret);

	FUNC4("%s devices:", uboot_storage.dv_name);
	if ((ret = FUNC3("\n")) != 0)
		return (ret);

	for (i = 0; i < stor_info_no; i++) {
		dev.dd.d_dev = &uboot_storage;
		dev.dd.d_unit = i;
		dev.d_slice = D_SLICENONE;
		dev.d_partition = D_PARTNONE;
		FUNC5(line, sizeof(line), "\tdisk%d (%s)\n", i,
		    FUNC8(FUNC0(&dev).type));
		if ((ret = FUNC3(line)) != 0)
			break;
		if (FUNC7(&dev) == 0) {
			FUNC6(line, "\tdisk%d", i);
			ret = FUNC2(&dev, line, verbose);
			FUNC1(&dev);
			if (ret != 0)
				break;
		}
	}
	return (ret);
}