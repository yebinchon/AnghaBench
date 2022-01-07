
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FD_1_2M_SIZE ;
 size_t FD_1_44M_SIZE ;
 size_t FD_2_88M_SIZE ;

__attribute__((used)) static size_t
fd_boot_image_size(int media_type)
{
 switch (media_type) {
 case 130:
  return (FD_1_2M_SIZE);
 case 129:
  return (FD_1_44M_SIZE);
 case 128:
  return (FD_2_88M_SIZE);
 default:
  return (0);
 }
}
