#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int bd_unit; scalar_t__ bd_sectors; int /*<<< orphan*/  bd_flags; int /*<<< orphan*/  bd_sectorsize; } ;
typedef  TYPE_1__ bdinfo_t ;
struct TYPE_8__ {char* dv_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_FLOPPY ; 
 int /*<<< orphan*/  BD_NO_MEDIA ; 
 int /*<<< orphan*/  BIOSDISK_SECSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  bd_link ; 
 TYPE_4__ biosfd ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  fdinfo ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,char*,int) ; 

__attribute__((used)) static int
FUNC7(void)
{
	int unit, numfd;
	bdinfo_t *bd;

	numfd = FUNC4();
	for (unit = 0; unit < numfd; unit++) {
		if ((bd = FUNC3(1, sizeof(*bd))) == NULL)
			break;

		bd->bd_sectorsize = BIOSDISK_SECSIZE;
		bd->bd_flags = BD_FLOPPY;
		bd->bd_unit = unit;

		/* Use std diskinfo for floppy drive */
		if (FUNC2(bd) != 0) {
			FUNC5(bd);
			break;
		}
		if (bd->bd_sectors == 0)
			bd->bd_flags |= BD_NO_MEDIA;

		FUNC6("BIOS drive %c: is %s%d\n", ('A' + unit),
		    biosfd.dv_name, unit);

		FUNC0(&fdinfo, bd, bd_link);
	}

	FUNC1(unit);
	return (0);
}