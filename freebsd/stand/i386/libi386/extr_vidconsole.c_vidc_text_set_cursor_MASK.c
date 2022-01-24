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
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int teken_unit_t ;

/* Variables and functions */
 int TEXT_COLS ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_END ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_LOC_HIGH ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_LOC_LOW ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_START ; 
 int /*<<< orphan*/  VGA_CRTC_MAX_SCAN_LINE ; 
 int /*<<< orphan*/  VGA_REG_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(teken_unit_t row, teken_unit_t col, bool visible)
{
        uint16_t addr;
        uint8_t msl, s, e;

        msl = FUNC0(VGA_REG_BASE, VGA_CRTC_MAX_SCAN_LINE) & 0x1f;
        s = FUNC0(VGA_REG_BASE, VGA_CRTC_CURSOR_START) & 0xC0;
        e = FUNC0(VGA_REG_BASE, VGA_CRTC_CURSOR_END);

        if (visible == true) {
                addr = row * TEXT_COLS + col;
                FUNC1(VGA_REG_BASE, VGA_CRTC_CURSOR_LOC_HIGH, addr >> 8);
                FUNC1(VGA_REG_BASE, VGA_CRTC_CURSOR_LOC_LOW,
		    addr & 0xff);
                e = msl;
        } else {
                s |= (1<<5);
        }
        FUNC1(VGA_REG_BASE, VGA_CRTC_CURSOR_START, s);
        FUNC1(VGA_REG_BASE, VGA_CRTC_CURSOR_END, e);
}