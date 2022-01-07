
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gic_v3_softc {int dummy; } ;


 int CTLR ;
 int GIC_PRIORITY_MIN ;
 int ICC_CTLR_EL1_EOIMODE ;
 int ICC_IGRPEN0_EL1_EN ;
 int IGRPEN1 ;
 int gic_icc_clear (int ,int ) ;
 int gic_icc_set (int ,int ) ;
 int gic_v3_cpu_enable_sre (struct gic_v3_softc*) ;
 int gic_v3_cpu_priority (int ) ;

__attribute__((used)) static int
gic_v3_cpu_init(struct gic_v3_softc *sc)
{
 int err;


 err = gic_v3_cpu_enable_sre(sc);
 if (err != 0)
  return (err);

 gic_v3_cpu_priority(GIC_PRIORITY_MIN);

 gic_icc_clear(CTLR, ICC_CTLR_EL1_EOIMODE);

 gic_icc_set(IGRPEN1, ICC_IGRPEN0_EL1_EN);

 return (0);
}
