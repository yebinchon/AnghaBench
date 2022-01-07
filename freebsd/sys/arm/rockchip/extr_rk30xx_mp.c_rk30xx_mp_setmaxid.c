
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int platform_t ;
typedef int bus_space_handle_t ;


 int SCU_CONFIG_REG ;
 int SCU_CONFIG_REG_NCPU_MASK ;
 int SCU_PHYSBASE ;
 int SCU_SIZE ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int ) ;
 int fdtbus_bs_tag ;
 int mp_maxid ;
 int mp_ncpus ;
 int panic (char*) ;

void
rk30xx_mp_setmaxid(platform_t plat)
{
 bus_space_handle_t scu;
 int ncpu;
 uint32_t val;

 if (mp_ncpus != 0)
  return;

 if (bus_space_map(fdtbus_bs_tag, SCU_PHYSBASE, SCU_SIZE, 0, &scu) != 0)
  panic("Could not map the SCU");

 val = bus_space_read_4(fdtbus_bs_tag, scu, SCU_CONFIG_REG);
 ncpu = (val & SCU_CONFIG_REG_NCPU_MASK) + 1;
 bus_space_unmap(fdtbus_bs_tag, scu, SCU_SIZE);

 mp_ncpus = ncpu;
 mp_maxid = ncpu - 1;
}
