
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {int ** pcpu; } ;
struct gic_v3_softc {TYPE_1__ gic_redists; } ;


 scalar_t__ CPU_ISSET (size_t,int *) ;
 int M_GIC_V3 ;
 int M_WAITOK ;
 int all_cpus ;
 int * malloc (int,int ,int ) ;
 size_t mp_maxid ;

__attribute__((used)) static int
gic_v3_redist_alloc(struct gic_v3_softc *sc)
{
 u_int cpuid;


 for (cpuid = 0; cpuid <= mp_maxid; cpuid++)
  if (CPU_ISSET(cpuid, &all_cpus) != 0)
   sc->gic_redists.pcpu[cpuid] =
    malloc(sizeof(*sc->gic_redists.pcpu[0]),
        M_GIC_V3, M_WAITOK);
  else
   sc->gic_redists.pcpu[cpuid] = ((void*)0);
 return (0);
}
