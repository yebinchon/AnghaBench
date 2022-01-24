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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PNP_TAG_ID_ANSI 134 
#define  PNP_TAG_ID_UNICODE 133 
#define  PNP_TAG_LARGE_RESERVED 132 
#define  PNP_TAG_LARGE_VENDOR 131 
#define  PNP_TAG_MEMORY32_FIXED 130 
#define  PNP_TAG_MEMORY32_RANGE 129 
#define  PNP_TAG_MEMORY_RANGE 128 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(u_char *resinfo, int item, int len)
{
    int i;

    FUNC0(FUNC1("*** Large ITEM %d len %d found\n", item, len));
    switch (item) {
    case PNP_TAG_MEMORY_RANGE:
	FUNC2(resinfo[0]);
	FUNC1("Memory range minimum address: 0x%x\n",
		(resinfo[1] << 8) + (resinfo[2] << 16));
	FUNC1("Memory range maximum address: 0x%x\n",
		(resinfo[3] << 8) + (resinfo[4] << 16));
	FUNC1("Memory range base alignment: 0x%x\n",
		(i = (resinfo[5] + (resinfo[6] << 8))) ? i : (1 << 16));
	FUNC1("Memory range length: 0x%x\n",
		(resinfo[7] + (resinfo[8] << 8)) * 256);
	break;
    case PNP_TAG_ID_ANSI:
	FUNC1("Device Description: ");

	for (i = 0; i < len; i++) {
	    if (resinfo[i]) /* XXX */
		FUNC1("%c", resinfo[i]);
	}
	FUNC1("\n");
	break;
    case PNP_TAG_ID_UNICODE:
	FUNC1("ID String Unicode Detected (Undefined)\n");
	break;
    case PNP_TAG_LARGE_VENDOR:
	FUNC1("Large Vendor Defined Detected\n");
	break;
    case PNP_TAG_MEMORY32_RANGE:
	FUNC1("32bit Memory Range Desc Unimplemented\n");
	break;
    case PNP_TAG_MEMORY32_FIXED:
	FUNC1("32bit Fixed Location Desc Unimplemented\n");
	break;
#ifdef DIAGNOSTIC
    case PNP_TAG_LARGE_RESERVED:
	printf("Large Reserved Tag Detected\n");
	break;
#endif
    }
}