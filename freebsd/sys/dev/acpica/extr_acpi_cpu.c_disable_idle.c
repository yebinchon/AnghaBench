
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_cpu_softc {int cpu_disable_idle; TYPE_1__* cpu_pcpu; } ;
typedef int cpuset_t ;
struct TYPE_2__ {int pc_cpuid; } ;


 int CPU_SETOF (int ,int *) ;
 int TRUE ;
 int smp_no_rendezvous_barrier ;
 int smp_rendezvous_cpus (int ,int ,int *,int ,int *) ;

__attribute__((used)) static void
disable_idle(struct acpi_cpu_softc *sc)
{
    cpuset_t cpuset;

    CPU_SETOF(sc->cpu_pcpu->pc_cpuid, &cpuset);
    sc->cpu_disable_idle = TRUE;
    smp_rendezvous_cpus(cpuset, smp_no_rendezvous_barrier, ((void*)0),
 smp_no_rendezvous_barrier, ((void*)0));
}
