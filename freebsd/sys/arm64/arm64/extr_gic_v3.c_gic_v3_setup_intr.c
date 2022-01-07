
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; int isrc_flags; int isrc_cpu; } ;
struct gic_v3_softc {int gic_mtx; } ;
struct gic_v3_irqsrc {int gi_irq; int gi_pol; int gi_trig; } ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int device_t ;


 int CPU_SET (int ,int *) ;
 int DIST ;
 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ GICD_ICFGR (int) ;
 scalar_t__ GICR_SGI_BASE_SIZE ;
 int GIC_FIRST_PPI ;
 int GIC_LAST_PPI ;
 int GIC_LAST_SPI ;
 int INTR_ISRCF_PPI ;
 int INTR_POLARITY_CONFORM ;
 int INTR_TRIGGER_CONFORM ;
 int INTR_TRIGGER_LEVEL ;
 int PCPU_GET (int ) ;
 int REDIST ;
 int cpuid ;
 struct gic_v3_softc* device_get_softc (int ) ;
 int do_gic_v3_map_intr (int ,struct intr_map_data*,int*,int*,int*) ;
 int gic_d_read (struct gic_v3_softc*,int,scalar_t__) ;
 int gic_d_write (struct gic_v3_softc*,int,scalar_t__,int) ;
 int gic_r_read (struct gic_v3_softc*,int,scalar_t__) ;
 int gic_r_write (struct gic_v3_softc*,int,scalar_t__,int) ;
 int gic_v3_bind_intr (int ,struct intr_irqsrc*) ;
 int gic_v3_wait_for_rwp (struct gic_v3_softc*,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static int
gic_v3_setup_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct gic_v3_softc *sc = device_get_softc(dev);
 struct gic_v3_irqsrc *gi = (struct gic_v3_irqsrc *)isrc;
 enum intr_trigger trig;
 enum intr_polarity pol;
 uint32_t reg;
 u_int irq;
 int error;

 if (data == ((void*)0))
  return (ENOTSUP);

 error = do_gic_v3_map_intr(dev, data, &irq, &pol, &trig);
 if (error != 0)
  return (error);

 if (gi->gi_irq != irq || pol == INTR_POLARITY_CONFORM ||
     trig == INTR_TRIGGER_CONFORM)
  return (EINVAL);


 if (isrc->isrc_handlers != 0) {
  if (pol != gi->gi_pol || trig != gi->gi_trig)
   return (EINVAL);
  else
   return (0);
 }

 gi->gi_pol = pol;
 gi->gi_trig = trig;
 if (isrc->isrc_flags & INTR_ISRCF_PPI)
  CPU_SET(PCPU_GET(cpuid), &isrc->isrc_cpu);

 if (irq >= GIC_FIRST_PPI && irq <= GIC_LAST_SPI) {
  mtx_lock_spin(&sc->gic_mtx);


  if (irq <= GIC_LAST_PPI)
   reg = gic_r_read(sc, 4,
       GICR_SGI_BASE_SIZE + GICD_ICFGR(irq));
  else
   reg = gic_d_read(sc, 4, GICD_ICFGR(irq));
  if (trig == INTR_TRIGGER_LEVEL)
   reg &= ~(2 << ((irq % 16) * 2));
  else
   reg |= 2 << ((irq % 16) * 2);

  if (irq <= GIC_LAST_PPI) {
   gic_r_write(sc, 4,
       GICR_SGI_BASE_SIZE + GICD_ICFGR(irq), reg);
   gic_v3_wait_for_rwp(sc, REDIST);
  } else {
   gic_d_write(sc, 4, GICD_ICFGR(irq), reg);
   gic_v3_wait_for_rwp(sc, DIST);
  }

  mtx_unlock_spin(&sc->gic_mtx);

  gic_v3_bind_intr(dev, isrc);
 }

 return (0);
}
