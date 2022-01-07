
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct efi_fb {int fb_mask_red; int fb_mask_green; int fb_mask_blue; int fb_mask_reserved; } ;



__attribute__((used)) static u_int
efifb_color_depth(struct efi_fb *efifb)
{
 uint32_t mask;
 u_int depth;

 mask = efifb->fb_mask_red | efifb->fb_mask_green |
     efifb->fb_mask_blue | efifb->fb_mask_reserved;
 if (mask == 0)
  return (0);
 for (depth = 1; mask != 1; depth++)
  mask >>= 1;
 return (depth);
}
