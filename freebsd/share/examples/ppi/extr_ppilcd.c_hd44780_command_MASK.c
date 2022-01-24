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
typedef  int u_int8_t ;

/* Variables and functions */
#define  CMD_BKSP 133 
#define  CMD_CLR 132 
#define  CMD_CR 131 
#define  CMD_HOME 130 
#define  CMD_NL 129 
#define  CMD_RESET 128 
 int /*<<< orphan*/  HD_COMMAND ; 
 int /*<<< orphan*/  HD_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,char*,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hd_blink ; 
 int /*<<< orphan*/  hd_cursor ; 
 int /*<<< orphan*/  hd_font ; 
 int hd_lines ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(int cmd) 
{
    u_int8_t	val;

    switch (cmd) {
    case CMD_RESET:	/* full manual reset and reconfigure as per datasheet */
	FUNC0(1, "hd44780: reset to %d lines, %s font,%s%s cursor", 
	      hd_lines, hd_font ? "5x10" : "5x7", hd_cursor ? "" : " no", hd_blink ? " blinking" : "");
	val = 0x30;
	if (hd_lines == 2)
	    val |= 0x08;
	if (hd_font)
	    val |= 0x04;
	FUNC2(HD_COMMAND, val);
	FUNC4(10000);
	FUNC2(HD_COMMAND, val);
	FUNC4(1000);
	FUNC2(HD_COMMAND, val);
	FUNC4(1000);
	val = 0x08;				/* display off */
	FUNC2(HD_COMMAND, val);
	FUNC4(1000);
	val |= 0x04;				/* display on */
	if (hd_cursor)
	    val |= 0x02;
	if (hd_blink)
	    val |= 0x01;
	FUNC2(HD_COMMAND, val);
	FUNC4(1000);
	FUNC2(HD_COMMAND, 0x06);	/* shift cursor by increment */
	FUNC4(1000);
	/* FALLTHROUGH */

    case CMD_CLR:
	FUNC2(HD_COMMAND, 0x01);
	FUNC4(2000);
	break;

    case CMD_BKSP:
	FUNC2(HD_DATA, 0x10);		/* shift cursor left one */
	break;
	
    case CMD_NL:
	if (hd_lines == 2)
	    FUNC2(HD_COMMAND, 0xc0);	/* beginning of second line */
	break;
	
    case CMD_CR:
	/* XXX will not work in 4-line mode, or where readback fails */
	val = FUNC1(HD_COMMAND) & 0x3f;	/* mask character position, save line pos */
	FUNC2(HD_COMMAND, 0x80 | val);
	break;
	
    case CMD_HOME:
	FUNC2(HD_COMMAND, 0x02);
	FUNC4(2000);
	break;
	
    default:
	if (FUNC3(cmd)) {
	    FUNC5("unknown command %c", cmd);
	} else {
	    FUNC5("unknown command 0x%x", cmd);
	}
    }
    FUNC4(40);
}