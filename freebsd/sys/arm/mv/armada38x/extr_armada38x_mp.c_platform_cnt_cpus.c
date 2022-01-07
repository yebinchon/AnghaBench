
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int device_type ;
typedef int bus_space_handle_t ;
typedef int bus_addr_t ;


 scalar_t__ MV_SCU_BASE ;
 int MV_SCU_REGS_LEN ;
 int MV_SCU_REG_CONFIG ;
 int OF_child (int) ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 int OF_peer (int) ;
 int SCU_CFG_REG_NCPU_MASK ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int ) ;
 int fdtbus_bs_tag ;
 int max (int,int) ;
 int memset (char*,int ,int) ;
 int min (int,int) ;
 int mp_ncpus ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
platform_cnt_cpus(void)
{
 bus_space_handle_t vaddr_scu;
 phandle_t cpus_node, child;
 char device_type[16];
 int fdt_cpu_count = 0;
 int reg_cpu_count = 0;
 uint32_t val;
 int rv;

 cpus_node = OF_finddevice("/cpus");
 if (cpus_node == -1) {

  mp_ncpus = 1;
  return (0);
 }


 for (child = OF_child(cpus_node); child != 0; child = OF_peer(child)) {

  memset(device_type, 0, sizeof(device_type));
  rv = OF_getprop(child, "device_type", device_type,
      sizeof(device_type) - 1);
  if (rv < 0)
   continue;
  if (strcmp(device_type, "cpu") != 0)
   continue;

  fdt_cpu_count++;
 }


 rv = bus_space_map(fdtbus_bs_tag, (bus_addr_t)MV_SCU_BASE,
     MV_SCU_REGS_LEN, 0, &vaddr_scu);
 if (rv != 0) {

  mp_ncpus = 1;
  return (0);
 }

 val = bus_space_read_4(fdtbus_bs_tag, vaddr_scu, MV_SCU_REG_CONFIG);
 bus_space_unmap(fdtbus_bs_tag, vaddr_scu, MV_SCU_REGS_LEN);
        reg_cpu_count = (val & SCU_CFG_REG_NCPU_MASK) + 1;


 mp_ncpus = min(reg_cpu_count, fdt_cpu_count);

 mp_ncpus = max(1, mp_ncpus);

 return (mp_ncpus);
}
