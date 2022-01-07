
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct efi_fb {int dummy; } ;
typedef int VOID ;
struct TYPE_6__ {scalar_t__ (* LocateProtocol ) (int *,int *,int **) ;} ;
struct TYPE_5__ {int Info; } ;
struct TYPE_4__ {TYPE_2__* Mode; } ;
typedef int EFI_UGA_DRAW_PROTOCOL ;
typedef scalar_t__ EFI_STATUS ;
typedef TYPE_1__ EFI_GRAPHICS_OUTPUT ;


 TYPE_3__* BS ;
 scalar_t__ EFI_SUCCESS ;
 int efifb_from_gop (struct efi_fb*,TYPE_2__*,int ) ;
 int efifb_from_uga (struct efi_fb*,int *) ;
 int gop_guid ;
 scalar_t__ stub1 (int *,int *,int **) ;
 scalar_t__ stub2 (int *,int *,int **) ;
 int uga_guid ;

int
efi_find_framebuffer(struct efi_fb *efifb)
{
 EFI_GRAPHICS_OUTPUT *gop;
 EFI_UGA_DRAW_PROTOCOL *uga;
 EFI_STATUS status;

 status = BS->LocateProtocol(&gop_guid, ((void*)0), (VOID **)&gop);
 if (status == EFI_SUCCESS)
  return (efifb_from_gop(efifb, gop->Mode, gop->Mode->Info));

 status = BS->LocateProtocol(&uga_guid, ((void*)0), (VOID **)&uga);
 if (status == EFI_SUCCESS)
  return (efifb_from_uga(efifb, uga));

 return (1);
}
