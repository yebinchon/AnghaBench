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
struct dos_partition {int dp_flag; } ;
struct TYPE_2__ {struct dos_partition* parts; } ;

/* Variables and functions */
 int ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int NDOSPART ; 
 scalar_t__ a_flag ; 
 TYPE_1__ mboot ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(int which)
{
	struct dos_partition *partp = &mboot.parts[0];
	int active, i, new, tmp;

	active = -1;
	for (i = 0; i < NDOSPART; i++) {
		if ((partp[i].dp_flag & ACTIVE) == 0)
			continue;
		FUNC2("Partition %d is marked active\n", i + 1);
		if (active == -1)
			active = i + 1;
	}
	if (a_flag && which != -1)
		active = which;
	else if (active == -1)
		active = 1;

	if (!FUNC1("Do you want to change the active partition?"))
		return;
setactive:
	do {
		new = active;
		FUNC0("active partition", new, tmp, 0);
		if (new < 1 || new > 4) {
			FUNC2("Active partition number must be in range 1-4."
					"  Try again.\n");
			goto setactive;
		}
		active = new;
	} while (!FUNC1("Are you happy with this choice"));
	for (i = 0; i < NDOSPART; i++)
		partp[i].dp_flag = 0;
	if (active > 0 && active <= NDOSPART)
		partp[active-1].dp_flag = ACTIVE;
}