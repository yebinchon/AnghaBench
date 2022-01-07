
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int PartitionNumber; } ;
typedef TYPE_1__ HARDDRIVE_DEVICE_PATH ;
typedef int EFI_DEVICE_PATH ;


 scalar_t__ DevicePathSubType (int *) ;
 scalar_t__ MEDIA_HARDDRIVE_DP ;
 int * efi_devpath_last_node (int *) ;

__attribute__((used)) static int
partition_number(EFI_DEVICE_PATH *devpath)
{
 EFI_DEVICE_PATH *md;
 HARDDRIVE_DEVICE_PATH *hd;

 md = efi_devpath_last_node(devpath);
 if (md == ((void*)0))
  return (-1);
 if (DevicePathSubType(md) != MEDIA_HARDDRIVE_DP)
  return (-1);
 hd = (HARDDRIVE_DEVICE_PATH *)md;
 return (hd->PartitionNumber);
}
