
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_CRTC_ADDRESS ;
 int VGA_CRTC_DATA ;
 int vga_get_indexed (int,int ,int ,int) ;

__attribute__((used)) static int
vga_get_crtc(int reg, int i)
{
 return (vga_get_indexed(reg, VGA_CRTC_ADDRESS, VGA_CRTC_DATA, i));
}
