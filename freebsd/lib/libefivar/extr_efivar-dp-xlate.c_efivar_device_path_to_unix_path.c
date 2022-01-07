
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmesh {int dummy; } ;
typedef int * const_efidp ;


 scalar_t__ DevicePathSubType (int *) ;
 scalar_t__ DevicePathType (int *) ;
 int EDOOFUS ;
 int EINVAL ;
 scalar_t__ END_DEVICE_PATH_TYPE ;
 int ENOMEM ;
 uintptr_t MAX_DP_SANITY ;
 scalar_t__ MEDIA_DEVICE_PATH ;
 scalar_t__ MEDIA_HARDDRIVE_DP ;
 scalar_t__ NextDevicePathNode (int *) ;
 int efi_cdrom_to_unix (struct gmesh*,int *,char**,char**,char**) ;
 int efi_floppy_to_unix (struct gmesh*,int *,char**,char**,char**) ;
 int efi_hd_to_unix (struct gmesh*,int *,char**,char**,char**) ;
 int efi_zpool_to_unix (struct gmesh*,int *,char**,char**,char**) ;
 int geom_deletetree (struct gmesh*) ;
 scalar_t__ geom_gettree (struct gmesh*) ;
 scalar_t__ is_cdrom_device (int *) ;
 scalar_t__ is_floppy_device (int *) ;
 scalar_t__ is_zpool_device (int *) ;

int
efivar_device_path_to_unix_path(const_efidp dp, char **dev, char **relpath, char **abspath)
{
 const_efidp walker;
 struct gmesh mesh;
 int rv = 0;




 if (dp == ((void*)0) || dev == ((void*)0) || relpath == ((void*)0) || abspath == ((void*)0))
  return (EDOOFUS);

 *dev = ((void*)0);
 *relpath = ((void*)0);
 *abspath = ((void*)0);






 walker = dp;
 while (DevicePathType(walker) != MEDIA_DEVICE_PATH &&
     DevicePathType(walker) != END_DEVICE_PATH_TYPE) {
  walker = (const_efidp)NextDevicePathNode(walker);
  if ((uintptr_t)walker - (uintptr_t)dp > MAX_DP_SANITY)
   return (EINVAL);
 }
 if (DevicePathType(walker) != MEDIA_DEVICE_PATH)
  return (EINVAL);
 if (geom_gettree(&mesh))
  return (ENOMEM);

 rv = EINVAL;
 if (DevicePathSubType(walker) == MEDIA_HARDDRIVE_DP)
  rv = efi_hd_to_unix(&mesh, walker, dev, relpath, abspath);
 geom_deletetree(&mesh);

 return (rv);
}
