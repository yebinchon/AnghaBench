
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct efi_fb {int fb_height; int fb_width; int fb_addr; int fb_size; int fb_stride; } ;
typedef int ssize_t ;
struct TYPE_5__ {int (* GetMode ) (TYPE_1__*,int*,int*,int*,int*) ;} ;
typedef TYPE_1__ EFI_UGA_DRAW_PROTOCOL ;
typedef int EFI_STATUS ;
typedef int EFI_PCI_IO_PROTOCOL ;


 scalar_t__ EFI_ERROR (int ) ;
 int PixelBlueGreenRedReserved8BitPerColor ;
 int efifb_mask_from_pixfmt (struct efi_fb*,int ,int *) ;
 int efifb_uga_find_pixel (TYPE_1__*,int,int *,int,int) ;
 int * efifb_uga_get_pciio () ;
 int efifb_uga_locate_framebuffer (int *,int*,int*) ;
 char* getenv (char*) ;
 int printf (char*) ;
 int strcmp (char*,char*) ;
 void* strtoul (char*,char**,int ) ;
 int stub1 (TYPE_1__*,int*,int*,int*,int*) ;

__attribute__((used)) static int
efifb_from_uga(struct efi_fb *efifb, EFI_UGA_DRAW_PROTOCOL *uga)
{
 EFI_PCI_IO_PROTOCOL *pciio;
 char *ev, *p;
 EFI_STATUS status;
 ssize_t offset;
 uint64_t fbaddr;
 uint32_t horiz, vert, stride;
 uint32_t np, depth, refresh;

 status = uga->GetMode(uga, &horiz, &vert, &depth, &refresh);
 if (EFI_ERROR(status))
  return (1);
 efifb->fb_height = vert;
 efifb->fb_width = horiz;

 if (efifb->fb_height == 0 || efifb->fb_width == 0)
  return (1);


 efifb_mask_from_pixfmt(efifb, PixelBlueGreenRedReserved8BitPerColor,
     ((void*)0));


 pciio = efifb_uga_get_pciio();


 status = efifb_uga_locate_framebuffer(pciio, &efifb->fb_addr,
     &efifb->fb_size);
 if (EFI_ERROR(status)) {
  efifb->fb_addr = 0;
  efifb->fb_size = 0;
 }
 offset = -1;
 ev = getenv("smbios.system.maker");
 if (ev != ((void*)0) && !strcmp(ev, "Apple Inc.")) {
  ev = getenv("smbios.system.product");
  if (ev != ((void*)0) && !strcmp(ev, "iMac7,1")) {

   horiz = 1680;
   vert = 1050;
   fbaddr = 0xc0000000;

   offset = 0x10000;
   stride = 1728;
  } else if (ev != ((void*)0) && !strcmp(ev, "MacBook3,1")) {

   horiz = 1280;
   vert = 800;
   fbaddr = 0xc0000000;

   offset = 0x0;
   stride = 2048;
  }
 }





 if (offset >= 0 && efifb->fb_width == horiz &&
     efifb->fb_height == vert && efifb->fb_addr == fbaddr) {
  efifb->fb_addr += offset;
  efifb->fb_size -= offset;
  efifb->fb_stride = stride;
  return (0);
 } else if (offset >= 0) {
  printf("Hardware make/model known, but graphics not "
      "as expected.\n");
  printf("Console may not work!\n");
 }





 efifb->fb_stride = efifb->fb_width;
 do {
  np = efifb->fb_stride & (efifb->fb_stride - 1);
  if (np) {
   efifb->fb_stride |= (np - 1);
   efifb->fb_stride++;
  }
 } while (np);

 ev = getenv("hw.efifb.address");
 if (ev == ((void*)0)) {
  if (efifb->fb_addr == 0) {
   printf("Please set hw.efifb.address and "
       "hw.efifb.stride.\n");
   return (1);
  }
  offset = efifb_uga_find_pixel(uga, 0, pciio, efifb->fb_addr,
      efifb->fb_size >> 8);
  if (offset == -1) {
   printf("Unable to reliably detect frame buffer.\n");
  } else if (offset > 0) {
   efifb->fb_addr += offset;
   efifb->fb_size -= offset;
  }
 } else {
  offset = 0;
  efifb->fb_size = efifb->fb_height * efifb->fb_stride * 4;
  efifb->fb_addr = strtoul(ev, &p, 0);
  if (*p != '\0')
   return (1);
 }

 ev = getenv("hw.efifb.stride");
 if (ev == ((void*)0)) {
  if (pciio != ((void*)0) && offset != -1) {

   offset = efifb_uga_find_pixel(uga, 1, pciio,
       efifb->fb_addr, horiz * 8);
   if (offset != -1)
    efifb->fb_stride = offset >> 2;
  } else {
   printf("Unable to reliably detect the stride.\n");
  }
 } else {
  efifb->fb_stride = strtoul(ev, &p, 0);
  if (*p != '\0')
   return (1);
 }





 efifb->fb_size = efifb->fb_height * efifb->fb_stride * 4;
 return (0);
}
