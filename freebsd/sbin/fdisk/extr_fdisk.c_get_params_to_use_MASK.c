#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int dos_cyls ; 
 int dos_cylsecs ; 
 int dos_heads ; 
 int dos_sectors ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3()
{
	int	tmp;
	FUNC2();
	if (FUNC1("Do you want to change our idea of what BIOS thinks ?"))
	{
		do
		{
			FUNC0("BIOS's idea of #cylinders", dos_cyls, tmp, 0);
			FUNC0("BIOS's idea of #heads", dos_heads, tmp, 0);
			FUNC0("BIOS's idea of #sectors", dos_sectors, tmp, 0);
			dos_cylsecs = dos_heads * dos_sectors;
			FUNC2();
		}
		while(!FUNC1("Are you happy with this choice"));
	}
}