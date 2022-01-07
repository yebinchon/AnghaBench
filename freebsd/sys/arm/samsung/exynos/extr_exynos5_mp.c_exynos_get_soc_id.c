
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_addr_t ;


 int EXYNOS5_SOC_ID_MASK ;
 int EXYNOS_CHIPID ;
 scalar_t__ bus_space_map (int ,int ,int,int ,int *) ;
 int bus_space_read_4 (int ,int ,int) ;
 int bus_space_unmap (int ,int ,int) ;
 int fdtbus_bs_tag ;
 int panic (char*) ;

__attribute__((used)) static int
exynos_get_soc_id(void)
{
 bus_addr_t chipid;
 int reg;

 if (bus_space_map(fdtbus_bs_tag, EXYNOS_CHIPID,
  0x1000, 0, &chipid) != 0)
  panic("Couldn't map chipid\n");
 reg = bus_space_read_4(fdtbus_bs_tag, chipid, 0x0);
 bus_space_unmap(fdtbus_bs_tag, chipid, 0x1000);

 return (reg & EXYNOS5_SOC_ID_MASK);
}
