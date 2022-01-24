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
struct TYPE_2__ {int bootinst_size; int /*<<< orphan*/ * bootinst; int /*<<< orphan*/ * parts; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOSMAGIC ; 
 size_t DOSMAGICOFFSET ; 
 int DOSPARTOFF ; 
 int DOSPARTSIZE ; 
 int NDOSPART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ iotest ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ mboot ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int secsize ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5()
{
	int	sector, i;

	if (iotest) {
		FUNC2();
		return 0;
	}
	for(i = 0; i < NDOSPART; i++)
		FUNC0(&mboot.bootinst[DOSPARTOFF + i * DOSPARTSIZE],
		    &mboot.parts[i]);
	FUNC1(&mboot.bootinst[DOSMAGICOFFSET], DOSMAGIC);
	for(sector = 0; sector < mboot.bootinst_size / secsize; sector++)
		if (FUNC4(sector,
			       &mboot.bootinst[sector * secsize]) == -1) {
			FUNC3("can't write fdisk partition table");
			return -1;
		}
	return(0);
}