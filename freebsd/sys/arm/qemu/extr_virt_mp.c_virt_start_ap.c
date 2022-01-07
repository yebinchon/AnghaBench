
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int boolean_t ;


 int PSCI_RETVAL_SUCCESS ;
 scalar_t__ mp_ncpus ;
 scalar_t__ mpentry ;
 int pmap_kextract (int ) ;
 int psci_cpu_on (int ,int ,int ) ;
 scalar_t__ running_cpus ;

__attribute__((used)) static boolean_t
virt_start_ap(u_int id, phandle_t node, u_int addr_cells, pcell_t *reg)
{
 int err;

 if (running_cpus >= mp_ncpus)
  return (0);
 running_cpus++;

 err = psci_cpu_on(*reg, pmap_kextract((vm_offset_t)mpentry), id);

 if (err != PSCI_RETVAL_SUCCESS)
  return (0);

 return (1);
}
