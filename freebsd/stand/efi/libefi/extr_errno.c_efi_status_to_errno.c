
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_STATUS ;


 int EACCES ;
 int EDOOFUS ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 int ENXIO ;
 int EOVERFLOW ;
 int EPERM ;
 int ESTALE ;

int
efi_status_to_errno(EFI_STATUS status)
{
 int errno;

 switch (status) {
 case 139:
  errno = EPERM;
  break;

 case 138:
  errno = EOVERFLOW;
  break;

 case 137:
 case 130:
  errno = EIO;
  break;

 case 136:
  errno = EINVAL;
  break;

 case 135:
  errno = ESTALE;
  break;

 case 133:
  errno = ENXIO;
  break;

 case 134:
  errno = ENOENT;
  break;

 case 132:
  errno = ENOMEM;
  break;

 case 131:
  errno = ENODEV;
  break;

 case 129:
  errno = ENOSPC;
  break;

 case 128:
  errno = EACCES;
  break;

 case 0:
  errno = 0;
  break;

 default:
  errno = EDOOFUS;
  break;
 }

 return (errno);
}
