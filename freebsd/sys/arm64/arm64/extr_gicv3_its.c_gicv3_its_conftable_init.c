
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct gicv3_its_softc {scalar_t__ sc_conf_base; } ;


 int GIC_PRIORITY_MAX ;
 int LPI_CONFTAB_ALIGN ;
 int LPI_CONFTAB_MAX_ADDR ;
 int LPI_CONFTAB_SIZE ;
 int LPI_CONF_GROUP1 ;
 int M_GICV3_ITS ;
 int M_WAITOK ;
 scalar_t__ contigmalloc (int ,int ,int ,int ,int ,int ,int ) ;
 int cpu_dcache_wb_range (scalar_t__,int ) ;
 int memset (void*,int,int ) ;

__attribute__((used)) static void
gicv3_its_conftable_init(struct gicv3_its_softc *sc)
{

 sc->sc_conf_base = (vm_offset_t)contigmalloc(LPI_CONFTAB_SIZE,
     M_GICV3_ITS, M_WAITOK, 0, LPI_CONFTAB_MAX_ADDR, LPI_CONFTAB_ALIGN,
     0);


 memset((void *)sc->sc_conf_base, GIC_PRIORITY_MAX | LPI_CONF_GROUP1,
     LPI_CONFTAB_SIZE);


 cpu_dcache_wb_range(sc->sc_conf_base, LPI_CONFTAB_SIZE);
}
