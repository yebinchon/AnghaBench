
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u_int ;
struct gic_v3_softc {scalar_t__ gic_nirqs; } ;


 int CPU_AFFINITY (int ) ;
 int DIST ;
 int GICD_CTLR ;
 int GICD_CTLR_ARE_NS ;
 int GICD_CTLR_G1 ;
 int GICD_CTLR_G1A ;
 int GICD_ICENABLER (scalar_t__) ;
 int GICD_ICFGR (scalar_t__) ;
 int GICD_IGROUPR (scalar_t__) ;
 int GICD_IPRIORITYR (scalar_t__) ;
 int GICD_IROUTER (scalar_t__) ;
 scalar_t__ GICD_I_PER_ICFGRn ;
 scalar_t__ GICD_I_PER_IGROUPRn ;
 scalar_t__ GICD_I_PER_IPRIORITYn ;
 scalar_t__ GICD_I_PER_ISENABLERn ;
 scalar_t__ GIC_FIRST_SPI ;
 int GIC_PRIORITY_MAX ;
 int gic_d_write (struct gic_v3_softc*,int,int ,int) ;
 int gic_v3_wait_for_rwp (struct gic_v3_softc*,int ) ;

__attribute__((used)) static int
gic_v3_dist_init(struct gic_v3_softc *sc)
{
 uint64_t aff;
 u_int i;




 gic_d_write(sc, 4, GICD_CTLR, 0);
 gic_v3_wait_for_rwp(sc, DIST);





 for (i = GIC_FIRST_SPI; i < sc->gic_nirqs; i += GICD_I_PER_IGROUPRn)
  gic_d_write(sc, 4, GICD_IGROUPR(i), 0xFFFFFFFF);


 for (i = GIC_FIRST_SPI; i < sc->gic_nirqs; i += GICD_I_PER_ICFGRn)
  gic_d_write(sc, 4, GICD_ICFGR(i), 0x00000000);


 for (i = GIC_FIRST_SPI;
     i < sc->gic_nirqs; i += GICD_I_PER_IPRIORITYn) {

  gic_d_write(sc, 4, GICD_IPRIORITYR(i), GIC_PRIORITY_MAX);
 }





 for (i = GIC_FIRST_SPI; i < sc->gic_nirqs; i += GICD_I_PER_ISENABLERn)
  gic_d_write(sc, 4, GICD_ICENABLER(i), 0xFFFFFFFF);

 gic_v3_wait_for_rwp(sc, DIST);





 gic_d_write(sc, 4, GICD_CTLR, GICD_CTLR_ARE_NS | GICD_CTLR_G1A |
     GICD_CTLR_G1);




 aff = CPU_AFFINITY(0);
 for (i = GIC_FIRST_SPI; i < sc->gic_nirqs; i++)
  gic_d_write(sc, 4, GICD_IROUTER(i), aff);

 return (0);
}
