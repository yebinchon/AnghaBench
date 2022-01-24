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
 int cyls ; 
 int cylsecs ; 
 int dos_cyls ; 
 int dos_cylsecs ; 
 int dos_heads ; 
 int dos_sectors ; 
 int heads ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int sectors ; 

__attribute__((used)) static void
FUNC1()
{
	FUNC0("parameters extracted from in-core disklabel are:\n");
	FUNC0("cylinders=%d heads=%d sectors/track=%d (%d blks/cyl)\n\n"
			,cyls,heads,sectors,cylsecs);
	if (dos_cyls > 1023 || dos_heads > 255 || dos_sectors > 63)
		FUNC0("Figures below won't work with BIOS for partitions not in cyl 1\n");
	FUNC0("parameters to be used for BIOS calculations are:\n");
	FUNC0("cylinders=%d heads=%d sectors/track=%d (%d blks/cyl)\n\n"
		,dos_cyls,dos_heads,dos_sectors,dos_cylsecs);
}