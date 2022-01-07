
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int uint64_t ;
typedef size_t u_int ;
struct pcpu {int dummy; } ;


 int CPU_SET (size_t,int *) ;
 int DPCPU_SIZE ;
 int KASSERT (int,char*) ;
 size_t MAXCPU ;
 int MP_QUIRK_CPULIST ;
 int M_WAITOK ;
 int M_ZERO ;
 int PSCI_MISSING ;
 int PSCI_RETVAL_SUCCESS ;
 struct pcpu* __pcpu ;
 int all_cpus ;
 size_t cpu0 ;
 int ** dpcpu ;
 int dpcpu_init (int *,size_t) ;
 int kernel_pmap ;
 int kmem_free (int ,int ) ;
 scalar_t__ kmem_malloc (int ,int) ;
 size_t mp_maxid ;
 int mp_ncpus ;
 int mp_quirks ;
 scalar_t__ mpentry ;
 int pcpu_destroy (struct pcpu*) ;
 int pcpu_init (struct pcpu*,size_t,int) ;
 int pmap_extract (int ,int ) ;
 int printf (char*,size_t,int ) ;
 int psci_cpu_on (int ,int ,size_t) ;

__attribute__((used)) static bool
start_cpu(u_int id, uint64_t target_cpu)
{
 struct pcpu *pcpup;
 vm_paddr_t pa;
 u_int cpuid;
 int err;


 if (id > mp_maxid)
  return (0);

 KASSERT(id < MAXCPU, ("Too many CPUs"));


 if (id == cpu0)
  return (1);







 cpuid = id;
 if (cpuid < cpu0)
  cpuid += mp_maxid + 1;
 cpuid -= cpu0;

 pcpup = &__pcpu[cpuid];
 pcpu_init(pcpup, cpuid, sizeof(struct pcpu));

 dpcpu[cpuid - 1] = (void *)kmem_malloc(DPCPU_SIZE, M_WAITOK | M_ZERO);
 dpcpu_init(dpcpu[cpuid - 1], cpuid);

 printf("Starting CPU %u (%lx)\n", cpuid, target_cpu);
 pa = pmap_extract(kernel_pmap, (vm_offset_t)mpentry);

 err = psci_cpu_on(target_cpu, pa, cpuid);
 if (err != PSCI_RETVAL_SUCCESS) {





  KASSERT(err == PSCI_MISSING ||
      (mp_quirks & MP_QUIRK_CPULIST) == MP_QUIRK_CPULIST,
      ("Failed to start CPU %u (%lx)\n", id, target_cpu));

  pcpu_destroy(pcpup);
  kmem_free((vm_offset_t)dpcpu[cpuid - 1], DPCPU_SIZE);
  dpcpu[cpuid - 1] = ((void*)0);
  mp_ncpus--;


  printf("Failed to start CPU %u (%lx)\n", id, target_cpu);
 } else
  CPU_SET(cpuid, &all_cpus);

 return (1);
}
