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
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_2__ {int length; size_t count; int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ smbios ; 

__attribute__((used)) static caddr_t
FUNC3(int type)
{
	caddr_t		dmi;
	size_t		i;

	if (smbios.addr == NULL)
		return (NULL);

	for (dmi = smbios.addr, i = 0;
	     dmi < smbios.addr + smbios.length && i < smbios.count; i++) {
		if (FUNC1(dmi, 0) == type)
			return dmi;
		/* Find structure terminator. */
		dmi = FUNC2(dmi);
		while (FUNC0(dmi, 0) != 0)
			dmi++;
		dmi += 2;
	}

	return (NULL);
}