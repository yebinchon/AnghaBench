
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rman_res_t ;
typedef int device_t ;


 int CPU_IMPL_CAVIUM ;
 int CPU_IMPL_MASK ;
 int CPU_MATCH (int,int ,int ,int ,int ) ;
 int CPU_PART_MASK ;
 int CPU_PART_THUNDERX ;
 int EINVAL ;
 int SYS_RES_MEMORY ;
 int THUNDER_CFG_BASE_TO_ECAM (int ) ;
 int bus_get_resource_start (int ,int ,int ) ;
 int device_printf (int ,char*,int) ;

int
thunder_pcie_identify_ecam(device_t dev, int *ecam)
{
 rman_res_t start;


 if (!CPU_MATCH(CPU_IMPL_MASK | CPU_PART_MASK,
     CPU_IMPL_CAVIUM, CPU_PART_THUNDERX, 0, 0))
  return (EINVAL);

 start = bus_get_resource_start(dev, SYS_RES_MEMORY, 0);
 *ecam = THUNDER_CFG_BASE_TO_ECAM(start);

 device_printf(dev, "ThunderX quirk, setting ECAM to %d\n", *ecam);

 return (0);
}
