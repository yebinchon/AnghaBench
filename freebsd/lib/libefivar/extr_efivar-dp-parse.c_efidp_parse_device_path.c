
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int efidp ;
typedef size_t UINTN ;
typedef int EFI_DEVICE_PATH_PROTOCOL ;


 size_t GetDevicePathSize (int *) ;
 int * UefiDevicePathLibConvertTextToDevicePath (char*) ;
 int free (int *) ;
 int memcpy (int ,int *,size_t) ;

ssize_t
efidp_parse_device_path(char *path, efidp out, size_t max)
{
 EFI_DEVICE_PATH_PROTOCOL *dp;
 UINTN len;

 dp = UefiDevicePathLibConvertTextToDevicePath (path);
 if (dp == ((void*)0))
  return -1;
 len = GetDevicePathSize(dp);
 if (len > max) {
  free(dp);
  return -1;
 }
 memcpy(out, dp, len);
 free(dp);

 return len;
}
