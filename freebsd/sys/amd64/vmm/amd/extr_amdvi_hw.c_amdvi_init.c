
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EIO ;
 int amdvi_enable_user ;
 int ivhd_count ;
 int printf (char*,int) ;

__attribute__((used)) static int
amdvi_init(void)
{
 if (!ivhd_count) {
  return (EIO);
 }
 if (!amdvi_enable_user && ivhd_count) {
  printf("bhyve: Found %d AMD-Vi/IOMMU device(s), "
       "use hw.vmm.amdvi.enable=1 to enable pass-through.\n",
      ivhd_count);
  return (EINVAL);
 }
 return (0);
}
