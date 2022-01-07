
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int phandle_t ;
struct TYPE_5__ {int r_bushandle; void* r_bustag; } ;
struct TYPE_4__ {int r_bushandle; void* r_bustag; } ;
struct TYPE_6__ {int errata_764369; TYPE_2__ cbus_res; TYPE_1__ aobus_res; int cpucfg_size; int cpucfg_res; int scu_size; int scu_res; } ;


 int AML_SCU_CONFIG_NCPU_MASK ;
 int AML_SCU_CONFIG_REG ;
 int AML_SOC_AOBUS_BASE_ADDR ;
 int AML_SOC_CBUS_BASE_ADDR ;
 int SCU_READ_4 (int ) ;
 scalar_t__ alloc_resource_for_node (int ,int *,int *) ;
 TYPE_3__ aml8726_smp ;
 int bus_space_map (void*,int ,int,int ,int *) ;
 int cpucfg_compatible ;
 scalar_t__ fdt_is_compatible_strict (int ,scalar_t__) ;
 void* fdtbus_bs_tag ;
 int find_node_for_device (char*,int ) ;
 int mp_maxid ;
 int mp_ncpus ;
 int panic (char*) ;
 int scu_compatible ;
 scalar_t__* scu_errata_764369 ;

void
platform_mp_setmaxid(void)
{
 int err;
 int i;
 int ncpu;
 phandle_t cpucfg_node;
 phandle_t scu_node;
 uint32_t value;

 if (mp_ncpus != 0)
  return;

 ncpu = 1;





 if ((scu_node = find_node_for_device("scu", scu_compatible)) == 0)
  goto moveon;

 if ((cpucfg_node = find_node_for_device("cpuconfig",
     cpucfg_compatible)) == 0)
  goto moveon;

 if (alloc_resource_for_node(scu_node, &aml8726_smp.scu_res,
     &aml8726_smp.scu_size) != 0)
  panic("Could not allocate resource for SCU");

 if (alloc_resource_for_node(cpucfg_node, &aml8726_smp.cpucfg_res,
     &aml8726_smp.cpucfg_size) != 0)
  panic("Could not allocate resource for CPUCONFIG");
 aml8726_smp.aobus_res.r_bustag = fdtbus_bs_tag;

 err = bus_space_map(aml8726_smp.aobus_res.r_bustag,
     AML_SOC_AOBUS_BASE_ADDR, 0x100000,
     0, &aml8726_smp.aobus_res.r_bushandle);

 if (err)
  panic("Could not allocate resource for AOBUS");

 aml8726_smp.cbus_res.r_bustag = fdtbus_bs_tag;

 err = bus_space_map(aml8726_smp.cbus_res.r_bustag,
     AML_SOC_CBUS_BASE_ADDR, 0x100000,
     0, &aml8726_smp.cbus_res.r_bushandle);

 if (err)
  panic("Could not allocate resource for CBUS");

 aml8726_smp.errata_764369 = 0;
 for (i = 0; scu_errata_764369[i]; i++)
  if (fdt_is_compatible_strict(scu_node, scu_errata_764369[i])) {
   aml8726_smp.errata_764369 = 1;
   break;
  }




 value = SCU_READ_4(AML_SCU_CONFIG_REG);
 ncpu = (value & AML_SCU_CONFIG_NCPU_MASK) + 1;

moveon:
 mp_ncpus = ncpu;
 mp_maxid = ncpu - 1;
}
