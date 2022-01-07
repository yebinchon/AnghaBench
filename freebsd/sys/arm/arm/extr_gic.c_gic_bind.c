
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef scalar_t__ u_int ;
struct arm_gic_softc {int dummy; } ;
typedef int cpuset_t ;


 scalar_t__ CPU_ISSET (size_t,int *) ;
 int EINVAL ;
 scalar_t__ GICD_ITARGETSR (int ) ;
 size_t MAXCPU ;
 size_t* arm_gic_map ;
 int gic_d_write_1 (struct arm_gic_softc*,scalar_t__,size_t) ;
 size_t min (int ,int) ;
 int mp_ncpus ;

__attribute__((used)) static int
gic_bind(struct arm_gic_softc *sc, u_int irq, cpuset_t *cpus)
{
 uint32_t cpu, end, mask;

 end = min(mp_ncpus, 8);
 for (cpu = end; cpu < MAXCPU; cpu++)
  if (CPU_ISSET(cpu, cpus))
   return (EINVAL);

 for (mask = 0, cpu = 0; cpu < end; cpu++)
  if (CPU_ISSET(cpu, cpus))
   mask |= arm_gic_map[cpu];

 gic_d_write_1(sc, GICD_ITARGETSR(0) + irq, mask);
 return (0);
}
