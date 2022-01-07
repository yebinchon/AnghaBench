
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct efi_fb {int fb_mask_red; int fb_mask_green; int fb_mask_blue; int fb_mask_reserved; } ;
struct TYPE_3__ {int RedMask; int GreenMask; int BlueMask; int ReservedMask; } ;
typedef TYPE_1__ EFI_PIXEL_BITMASK ;
typedef int EFI_GRAPHICS_PIXEL_FORMAT ;






__attribute__((used)) static int
efifb_mask_from_pixfmt(struct efi_fb *efifb, EFI_GRAPHICS_PIXEL_FORMAT pixfmt,
    EFI_PIXEL_BITMASK *pixinfo)
{
 int result;

 result = 0;
 switch (pixfmt) {
 case 128:
  efifb->fb_mask_red = 0x000000ff;
  efifb->fb_mask_green = 0x0000ff00;
  efifb->fb_mask_blue = 0x00ff0000;
  efifb->fb_mask_reserved = 0xff000000;
  break;
 case 129:
  efifb->fb_mask_red = 0x00ff0000;
  efifb->fb_mask_green = 0x0000ff00;
  efifb->fb_mask_blue = 0x000000ff;
  efifb->fb_mask_reserved = 0xff000000;
  break;
 case 130:
  efifb->fb_mask_red = pixinfo->RedMask;
  efifb->fb_mask_green = pixinfo->GreenMask;
  efifb->fb_mask_blue = pixinfo->BlueMask;
  efifb->fb_mask_reserved = pixinfo->ReservedMask;
  break;
 default:
  result = 1;
  break;
 }
 return (result);
}
