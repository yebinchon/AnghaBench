
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * EFI_HANDLE ;
typedef int EFI_DEVICE_PATH ;


 int efi_devpath_match_node (int *,int *) ;
 int * efi_devpath_to_media_path (int *) ;
 int * efi_lookup_devpath (int *) ;

EFI_HANDLE
efi_devpath_to_handle(EFI_DEVICE_PATH *path, EFI_HANDLE *handles, unsigned nhandles)
{
 unsigned i;
 EFI_DEVICE_PATH *media, *devpath;
 EFI_HANDLE h;

 media = efi_devpath_to_media_path(path);
 if (media == ((void*)0))
  return (((void*)0));
 for (i = 0; i < nhandles; i++) {
  h = handles[i];
  devpath = efi_lookup_devpath(h);
  if (devpath == ((void*)0))
   continue;
  if (!efi_devpath_match_node(media, efi_devpath_to_media_path(devpath)))
   continue;
  return (h);
 }
 return (((void*)0));
}
