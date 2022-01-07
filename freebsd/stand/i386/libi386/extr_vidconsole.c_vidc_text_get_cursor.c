
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int teken_unit_t ;


 int TEXT_COLS ;
 int VGA_CRTC_CURSOR_LOC_HIGH ;
 int VGA_CRTC_CURSOR_LOC_LOW ;
 int VGA_REG_BASE ;
 int vga_get_crtc (int ,int ) ;

__attribute__((used)) static void
vidc_text_get_cursor(teken_unit_t *row, teken_unit_t *col)
{
 uint16_t addr;

 addr = (vga_get_crtc(VGA_REG_BASE, VGA_CRTC_CURSOR_LOC_HIGH) << 8) +
     vga_get_crtc(VGA_REG_BASE, VGA_CRTC_CURSOR_LOC_LOW);

 *row = addr / TEXT_COLS;
 *col = addr % TEXT_COLS;
}
