
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef size_t u_int ;
typedef int ssize_t ;
struct TYPE_15__ {int (* Read ) (TYPE_4__*,int ,int ,scalar_t__,size_t,scalar_t__*) ;} ;
struct TYPE_18__ {TYPE_1__ Mem; } ;
struct TYPE_17__ {int (* Blt ) (TYPE_3__*,TYPE_2__*,int ,int ,size_t,int ,size_t,int,int,int ) ;} ;
struct TYPE_16__ {scalar_t__ Reserved; int Blue; int Green; int Red; } ;
typedef TYPE_2__ EFI_UGA_PIXEL ;
typedef TYPE_3__ EFI_UGA_DRAW_PROTOCOL ;
typedef int EFI_STATUS ;
typedef TYPE_4__ EFI_PCI_IO_PROTOCOL ;


 scalar_t__ EFI_ERROR (int ) ;
 int EFI_ERROR_CODE (int ) ;
 int EFI_PCI_IO_PASS_THROUGH_BAR ;
 int EfiPciIoWidthUint32 ;
 int EfiUgaBltBufferToVideo ;
 int EfiUgaVideoToBltBuffer ;
 scalar_t__* calloc (size_t,int) ;
 int free (scalar_t__*) ;
 size_t min (scalar_t__,size_t) ;
 int printf (char*,...) ;
 int stub1 (TYPE_3__*,TYPE_2__*,int ,int ,size_t,int ,size_t,int,int,int ) ;
 int stub2 (TYPE_4__*,int ,int ,scalar_t__,size_t,scalar_t__*) ;
 int stub3 (TYPE_3__*,TYPE_2__*,int ,int ,size_t,int ,size_t,int,int,int ) ;
 int stub4 (TYPE_4__*,int ,int ,scalar_t__,size_t,scalar_t__*) ;
 int stub5 (TYPE_3__*,TYPE_2__*,int ,int ,size_t,int ,size_t,int,int,int ) ;

__attribute__((used)) static ssize_t
efifb_uga_find_pixel(EFI_UGA_DRAW_PROTOCOL *uga, u_int line,
    EFI_PCI_IO_PROTOCOL *pciio, uint64_t addr, uint64_t size)
{
 EFI_UGA_PIXEL pix0, pix1;
 uint8_t *data1, *data2;
 size_t count, maxcount = 1024;
 ssize_t ofs;
 EFI_STATUS status;
 u_int idx;

 status = uga->Blt(uga, &pix0, EfiUgaVideoToBltBuffer,
     0, line, 0, 0, 1, 1, 0);
 if (EFI_ERROR(status)) {
  printf("UGA BLT operation failed (video->buffer)");
  return (-1);
 }
 pix1.Red = ~pix0.Red;
 pix1.Green = ~pix0.Green;
 pix1.Blue = ~pix0.Blue;
 pix1.Reserved = 0;

 data1 = calloc(maxcount, 2);
 if (data1 == ((void*)0)) {
  printf("Unable to allocate memory");
  return (-1);
 }
 data2 = data1 + maxcount;

 ofs = 0;
 while (size > 0) {
  count = min(size, maxcount);

  status = pciio->Mem.Read(pciio, EfiPciIoWidthUint32,
      EFI_PCI_IO_PASS_THROUGH_BAR, addr + ofs, count >> 2,
      data1);
  if (EFI_ERROR(status)) {
   printf("Error reading frame buffer (before)");
   goto fail;
  }
  status = uga->Blt(uga, &pix1, EfiUgaBltBufferToVideo,
      0, 0, 0, line, 1, 1, 0);
  if (EFI_ERROR(status)) {
   printf("UGA BLT operation failed (modify)");
   goto fail;
  }
  status = pciio->Mem.Read(pciio, EfiPciIoWidthUint32,
      EFI_PCI_IO_PASS_THROUGH_BAR, addr + ofs, count >> 2,
      data2);
  if (EFI_ERROR(status)) {
   printf("Error reading frame buffer (after)");
   goto fail;
  }
  status = uga->Blt(uga, &pix0, EfiUgaBltBufferToVideo,
      0, 0, 0, line, 1, 1, 0);
  if (EFI_ERROR(status)) {
   printf("UGA BLT operation failed (restore)");
   goto fail;
  }
  for (idx = 0; idx < count; idx++) {
   if (data1[idx] != data2[idx]) {
    free(data1);
    return (ofs + (idx & ~3));
   }
  }
  ofs += count;
  size -= count;
 }
 printf("No change detected in frame buffer");

 fail:
 printf(" -- error %lu\n", EFI_ERROR_CODE(status));
 free(data1);
 return (-1);
}
