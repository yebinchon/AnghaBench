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
struct TYPE_7__ {int bd_unit; } ;
typedef  TYPE_1__ bdinfo_t ;
struct TYPE_8__ {char* dv_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIOS_NUMDRIVES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  bd_link ; 
 TYPE_4__ bioshd ; 
 TYPE_1__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  hdinfo ; 
 int /*<<< orphan*/  FUNC6 (char*,char,char*,int) ; 

__attribute__((used)) static int
FUNC7(void)
{
	int base, unit;
	bdinfo_t *bd;

	base = 0x80;
	for (unit = 0; unit < *(unsigned char *)FUNC0(BIOS_NUMDRIVES); unit++) {
		/*
		 * Check the BIOS equipment list for number of fixed disks.
		 */
		if ((bd = FUNC4(1, sizeof(*bd))) == NULL)
			break;
		bd->bd_unit = base + unit;
		if (!FUNC3(bd)) {
			FUNC5(bd);
			break;
		}

		FUNC6("BIOS drive %c: is %s%d\n", ('C' + unit),
		    bioshd.dv_name, unit);

		FUNC1(&hdinfo, bd, bd_link);
	}
	FUNC2(unit);
	return (0);
}