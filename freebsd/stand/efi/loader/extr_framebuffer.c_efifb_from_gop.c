
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct efi_fb {int fb_stride; int fb_width; int fb_height; int fb_size; int fb_addr; } ;
struct TYPE_6__ {int PixelInformation; int PixelFormat; int PixelsPerScanLine; int HorizontalResolution; int VerticalResolution; } ;
struct TYPE_5__ {int FrameBufferSize; int FrameBufferBase; } ;
typedef TYPE_1__ EFI_GRAPHICS_OUTPUT_PROTOCOL_MODE ;
typedef TYPE_2__ EFI_GRAPHICS_OUTPUT_MODE_INFORMATION ;


 int efifb_mask_from_pixfmt (struct efi_fb*,int ,int *) ;

__attribute__((used)) static int
efifb_from_gop(struct efi_fb *efifb, EFI_GRAPHICS_OUTPUT_PROTOCOL_MODE *mode,
    EFI_GRAPHICS_OUTPUT_MODE_INFORMATION *info)
{
 int result;

 efifb->fb_addr = mode->FrameBufferBase;
 efifb->fb_size = mode->FrameBufferSize;
 efifb->fb_height = info->VerticalResolution;
 efifb->fb_width = info->HorizontalResolution;
 efifb->fb_stride = info->PixelsPerScanLine;
 result = efifb_mask_from_pixfmt(efifb, info->PixelFormat,
     &info->PixelInformation);
 return (result);
}
