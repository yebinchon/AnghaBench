
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_handle_t ;


 int CPUS_CL_RST (int) ;
 int CPUX_CL_CTRL0 (int) ;
 int CPUX_CL_RST (int) ;
 int CPU_PWR_CLAMP_STEPS ;
 int PRCM_CL_PWROFF (int) ;
 int PRCM_CL_PWR_CLAMP (int,int) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int fdtbus_bs_tag ;

__attribute__((used)) static void
aw_mc_mp_start_cpu(bus_space_handle_t cpuscfg, bus_space_handle_t cpuxcfg,
    bus_space_handle_t prcm, int cluster, int cpu)
{
 uint32_t val;
 int i;


 val = bus_space_read_4(fdtbus_bs_tag, cpuxcfg, CPUX_CL_RST(cluster));
 val &= ~(1 << cpu);
 bus_space_write_4(fdtbus_bs_tag, cpuxcfg, CPUX_CL_RST(cluster), val);


 val = bus_space_read_4(fdtbus_bs_tag, cpuscfg, CPUS_CL_RST(cluster));
 val &= ~(1 << cpu);
 bus_space_write_4(fdtbus_bs_tag, cpuscfg, CPUS_CL_RST(cluster), val);


 val = bus_space_read_4(fdtbus_bs_tag, cpuxcfg, CPUX_CL_CTRL0(cluster));
 val &= ~(1 << cpu);
 bus_space_write_4(fdtbus_bs_tag, cpuxcfg, CPUX_CL_CTRL0(cluster), val);


 for (i = 0; i <= CPU_PWR_CLAMP_STEPS; i++)
  bus_space_write_4(fdtbus_bs_tag, prcm,
      PRCM_CL_PWR_CLAMP(cluster, cpu), 0xff >> i);
 while (bus_space_read_4(fdtbus_bs_tag, prcm,
     PRCM_CL_PWR_CLAMP(cluster, cpu)) != 0)
  ;


 val = bus_space_read_4(fdtbus_bs_tag, prcm, PRCM_CL_PWROFF(cluster));
 val &= ~(1 << cpu);
 bus_space_write_4(fdtbus_bs_tag, prcm, PRCM_CL_PWROFF(cluster), val);


 val = bus_space_read_4(fdtbus_bs_tag, cpuscfg, CPUS_CL_RST(cluster));
 val |= (1 << cpu);
 bus_space_write_4(fdtbus_bs_tag, cpuscfg, CPUS_CL_RST(cluster), val);


 val = bus_space_read_4(fdtbus_bs_tag, cpuxcfg, CPUX_CL_RST(cluster));
 val |= (1 << cpu);
 bus_space_write_4(fdtbus_bs_tag, cpuxcfg, CPUX_CL_RST(cluster), val);
}
