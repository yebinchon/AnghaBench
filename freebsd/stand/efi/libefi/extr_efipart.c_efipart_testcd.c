
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Media; } ;
struct TYPE_4__ {int MediaPresent; scalar_t__ RemovableMedia; } ;
typedef int EFI_DEVICE_PATH ;
typedef TYPE_2__ EFI_BLOCK_IO ;


 scalar_t__ DevicePathSubType (int *) ;
 scalar_t__ DevicePathType (int *) ;
 scalar_t__ MEDIA_CDROM_DP ;
 scalar_t__ MEDIA_DEVICE_PATH ;

__attribute__((used)) static bool
efipart_testcd(EFI_DEVICE_PATH *node, EFI_BLOCK_IO *blkio)
{
 if (DevicePathType(node) == MEDIA_DEVICE_PATH &&
     DevicePathSubType(node) == MEDIA_CDROM_DP) {
  return (1);
 }


 if (blkio->Media->RemovableMedia &&
     !blkio->Media->MediaPresent) {
  return (1);
 }

 return (0);
}
