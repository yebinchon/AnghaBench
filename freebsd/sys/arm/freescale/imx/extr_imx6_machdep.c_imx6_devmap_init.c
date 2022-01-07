
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int platform_t ;


 int devmap_add_entry (int const,int const) ;

__attribute__((used)) static int
imx6_devmap_init(platform_t plat)
{
 const uint32_t IMX6_ARMMP_PHYS = 0x00a00000;
 const uint32_t IMX6_ARMMP_SIZE = 0x00100000;
 const uint32_t IMX6_AIPS1_PHYS = 0x02000000;
 const uint32_t IMX6_AIPS1_SIZE = 0x00100000;
 const uint32_t IMX6_AIPS2_PHYS = 0x02100000;
 const uint32_t IMX6_AIPS2_SIZE = 0x00100000;

 devmap_add_entry(IMX6_ARMMP_PHYS, IMX6_ARMMP_SIZE);
 devmap_add_entry(IMX6_AIPS1_PHYS, IMX6_AIPS1_SIZE);
 devmap_add_entry(IMX6_AIPS2_PHYS, IMX6_AIPS2_SIZE);

 return (0);
}
