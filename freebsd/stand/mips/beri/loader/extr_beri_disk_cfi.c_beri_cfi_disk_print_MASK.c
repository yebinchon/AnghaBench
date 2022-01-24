#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ d_unit; TYPE_2__* d_dev; } ;
struct disk_devdesc {int /*<<< orphan*/  d_partition; int /*<<< orphan*/  d_slice; TYPE_1__ dd; } ;
typedef  int /*<<< orphan*/  line ;
struct TYPE_4__ {char* dv_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PARTNONE ; 
 int /*<<< orphan*/  D_SLICENONE ; 
 TYPE_2__ beri_cfi_disk ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct disk_devdesc*) ; 
 scalar_t__ FUNC3 (struct disk_devdesc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct disk_devdesc*,char*,int) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(int verbose)
{
	struct disk_devdesc dev;
	char line[80];
	int ret;

	FUNC6("%s devices:", beri_cfi_disk.dv_name);
	if ((ret = FUNC5("\n")) != 0)
		return (ret);

	FUNC7(line, sizeof(line), "    cfi%d   CFI flash device\n", 0);
	ret = FUNC5(line);
	if (ret != 0)
		return (ret);
	dev.dd.d_dev = &beri_cfi_disk;
	dev.dd.d_unit = 0;
	dev.d_slice = D_SLICENONE;
	dev.d_partition = D_PARTNONE;
	if (FUNC3(&dev, FUNC0(), FUNC1()) == 0) {
		FUNC7(line, sizeof(line), "    cfi%d", 0);
		ret = FUNC4(&dev, line, verbose);
		FUNC2(&dev);
	}

	return (ret);
}