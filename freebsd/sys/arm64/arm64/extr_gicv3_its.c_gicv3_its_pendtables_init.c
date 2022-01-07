
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct gicv3_its_softc {scalar_t__* sc_pend_base; int sc_cpus; } ;


 scalar_t__ CPU_ISSET (int,int *) ;
 int LPI_PENDTAB_ALIGN ;
 int LPI_PENDTAB_MAX_ADDR ;
 int LPI_PENDTAB_SIZE ;
 int M_GICV3_ITS ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ contigmalloc (int ,int ,int,int ,int ,int ,int ) ;
 int cpu_dcache_wb_range (scalar_t__,int ) ;
 int mp_maxid ;

__attribute__((used)) static void
gicv3_its_pendtables_init(struct gicv3_its_softc *sc)
{
 int i;

 for (i = 0; i <= mp_maxid; i++) {
  if (CPU_ISSET(i, &sc->sc_cpus) == 0)
   continue;

  sc->sc_pend_base[i] = (vm_offset_t)contigmalloc(
      LPI_PENDTAB_SIZE, M_GICV3_ITS, M_WAITOK | M_ZERO,
      0, LPI_PENDTAB_MAX_ADDR, LPI_PENDTAB_ALIGN, 0);


  cpu_dcache_wb_range((vm_offset_t)sc->sc_pend_base[i],
      LPI_PENDTAB_SIZE);
 }
}
