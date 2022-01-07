
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int EFI_DEVICE_PATH ;


 size_t DevicePathNodeLength (int ) ;
 int NextDevicePathNode (int *) ;
 int SetDevicePathEndNode (int *) ;
 int * efi_devpath_last_node (int *) ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;

EFI_DEVICE_PATH *
efi_devpath_trim(EFI_DEVICE_PATH *devpath)
{
 EFI_DEVICE_PATH *node, *copy;
 size_t prefix, len;

 if ((node = efi_devpath_last_node(devpath)) == ((void*)0))
  return (((void*)0));
 prefix = (UINT8 *)node - (UINT8 *)devpath;
 if (prefix == 0)
  return (((void*)0));
 len = prefix + DevicePathNodeLength(NextDevicePathNode(node));
 copy = malloc(len);
 if (copy != ((void*)0)) {
  memcpy(copy, devpath, prefix);
  node = (EFI_DEVICE_PATH *)((UINT8 *)copy + prefix);
  SetDevicePathEndNode(node);
 }
 return (copy);
}
