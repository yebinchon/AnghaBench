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
struct TYPE_2__ {int /*<<< orphan*/ * parts; int /*<<< orphan*/ * bootinst; int /*<<< orphan*/  bootinst_size; } ;

/* Variables and functions */
 scalar_t__ DOSMAGIC ; 
 size_t DOSMAGICOFFSET ; 
 int DOSPARTOFF ; 
 int DOSPARTSIZE ; 
 int NDOSPART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ mboot ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  secsize ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6()
{
	int i;

	mboot.bootinst_size = secsize;
	if (mboot.bootinst != NULL)
		FUNC1(mboot.bootinst);
	if ((mboot.bootinst = FUNC3(mboot.bootinst_size)) == NULL) {
		FUNC5("unable to allocate buffer to read fdisk "
		      "partition table");
		return -1;
	}
	if (FUNC4(0, mboot.bootinst) == -1) {
		FUNC5("can't read fdisk partition table");
		return -1;
	}
	if (FUNC2(&mboot.bootinst[DOSMAGICOFFSET]) != DOSMAGIC) {
		FUNC5("invalid fdisk partition table found");
		/* So should we initialize things */
		return -1;
	}
	for (i = 0; i < NDOSPART; i++)
		FUNC0(
		    &mboot.bootinst[DOSPARTOFF + i * DOSPARTSIZE],
		    &mboot.parts[i]);
	return 0;
}