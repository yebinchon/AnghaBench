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
 int /*<<< orphan*/  FUNC0 (char*) ; 

void
FUNC1 (int x)
{
    if (x & 0x1)
	FUNC0 ("Memory Range: Writeable\n");
    else
	FUNC0 ("Memory Range: Not writeable (ROM)\n");

    if (x & 0x2)
	FUNC0 ("Memory Range: Read-cacheable, write-through\n");
    else
	FUNC0 ("Memory Range: Non-cacheable\n");

    if (x & 0x4)
	FUNC0 ("Memory Range: Decode supports high address\n");
    else
	FUNC0 ("Memory Range: Decode supports range length\n");

    switch ((x & 0x18) >> 3) {
    case 0:
	FUNC0 ("Memory Range: 8-bit memory only\n");
	break;
    case 1:
	FUNC0 ("Memory Range: 16-bit memory only\n");
	break;
    case 2:
	FUNC0 ("Memory Range: 8-bit and 16-bit memory supported\n");
	break;
#ifdef DIAGNOSTIC
    case 3:
	printf ("Memory Range: Reserved\n");
	break;
#endif
    }

    if (x & 0x20)
	FUNC0 ("Memory Range: Memory is shadowable\n");
    else
	FUNC0 ("Memory Range: Memory is not shadowable\n");

    if (x & 0x40)
	FUNC0 ("Memory Range: Memory is an expansion ROM\n");
    else
	FUNC0 ("Memory Range: Memory is not an expansion ROM\n");

#ifdef DIAGNOSTIC
    if (x & 0x80)
	printf ("Memory Range: Reserved (Device is brain-damaged)\n");
#endif
}