
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;
typedef int bus_space_handle_t ;


 int bus_space_map (int ,int,int,int ,int *) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int fdtbus_bs_tag ;

__attribute__((used)) static void
exynos5_cpu_reset(platform_t plat)
{
 bus_space_handle_t bsh;

 bus_space_map(fdtbus_bs_tag, 0x10040400, 0x1000, 0, &bsh);
 bus_space_write_4(fdtbus_bs_tag, bsh, 0, 1);

 while (1);
}
