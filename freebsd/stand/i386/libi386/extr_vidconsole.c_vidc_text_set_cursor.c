
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int teken_unit_t ;


 int TEXT_COLS ;
 int VGA_CRTC_CURSOR_END ;
 int VGA_CRTC_CURSOR_LOC_HIGH ;
 int VGA_CRTC_CURSOR_LOC_LOW ;
 int VGA_CRTC_CURSOR_START ;
 int VGA_CRTC_MAX_SCAN_LINE ;
 int VGA_REG_BASE ;
 int vga_get_crtc (int ,int ) ;
 int vga_set_crtc (int ,int ,int) ;

__attribute__((used)) static void
vidc_text_set_cursor(teken_unit_t row, teken_unit_t col, bool visible)
{
        uint16_t addr;
        uint8_t msl, s, e;

        msl = vga_get_crtc(VGA_REG_BASE, VGA_CRTC_MAX_SCAN_LINE) & 0x1f;
        s = vga_get_crtc(VGA_REG_BASE, VGA_CRTC_CURSOR_START) & 0xC0;
        e = vga_get_crtc(VGA_REG_BASE, VGA_CRTC_CURSOR_END);

        if (visible == 1) {
                addr = row * TEXT_COLS + col;
                vga_set_crtc(VGA_REG_BASE, VGA_CRTC_CURSOR_LOC_HIGH, addr >> 8);
                vga_set_crtc(VGA_REG_BASE, VGA_CRTC_CURSOR_LOC_LOW,
      addr & 0xff);
                e = msl;
        } else {
                s |= (1<<5);
        }
        vga_set_crtc(VGA_REG_BASE, VGA_CRTC_CURSOR_START, s);
        vga_set_crtc(VGA_REG_BASE, VGA_CRTC_CURSOR_END, e);
}
