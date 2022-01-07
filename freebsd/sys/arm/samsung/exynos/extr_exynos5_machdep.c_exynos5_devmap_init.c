
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int devmap_add_entry (int,int) ;

__attribute__((used)) static int
exynos5_devmap_init(platform_t plat)
{


 devmap_add_entry(0x10000000, 0x100000);


 devmap_add_entry(0x12C00000, 0x100000);


 devmap_add_entry(0x12200000, 0x100000);

 return (0);
}
