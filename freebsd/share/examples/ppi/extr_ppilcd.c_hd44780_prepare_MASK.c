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
 int AUTOFEED ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  EX_OSFILE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PPIGCTRL ; 
 int SELECTIN ; 
 int STROBE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char) ; 
 int hd_blink ; 
 int hd_cbits ; 
 int hd_cursor ; 
 int hd_fd ; 
 int hd_font ; 
 int hd_lines ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(char *devname, char *options) 
{
    char	*cp = options;
    
    if ((hd_fd = FUNC6(devname, O_RDWR, 0)) == -1)
	FUNC1(EX_OSFILE, "can't open '%s'", devname);

    /* parse options */
    while (cp && *cp) {
	switch (*cp++) {
	case '1':
	    hd_lines = 1;
	    break;
	case 'B':
	    hd_blink = 1;
	    break;
	case 'C':
	    hd_cursor = 1;
	    break;
	case 'F':
	    hd_font = 1;
	    break;
	default:
	    FUNC2(EX_USAGE, "hd44780: unknown option code '%c'", *(cp-1));
	}
    }

    /* Put LCD in idle state */
    if (FUNC5(hd_fd, PPIGCTRL, &hd_cbits))		/* save other control bits */
	FUNC1(EX_IOERR, "ioctl PPIGCTRL failed (not a ppi device?)");
    hd_cbits &= ~(STROBE | SELECTIN | AUTOFEED);	/* set strobe, RS, R/W low */
    FUNC0(2, "static control bits 0x%x", hd_cbits);
    FUNC3(STROBE);
    FUNC4(0);

}