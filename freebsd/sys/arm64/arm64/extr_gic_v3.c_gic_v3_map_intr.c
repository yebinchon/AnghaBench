
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
struct gic_v3_softc {int dummy; } ;
typedef int device_t ;


 struct intr_irqsrc* GIC_INTR_ISRC (struct gic_v3_softc*,int ) ;
 struct gic_v3_softc* device_get_softc (int ) ;
 int do_gic_v3_map_intr (int ,struct intr_map_data*,int *,int *,int *) ;

__attribute__((used)) static int
gic_v3_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct gic_v3_softc *sc;
 int error;
 u_int irq;

 error = do_gic_v3_map_intr(dev, data, &irq, ((void*)0), ((void*)0));
 if (error == 0) {
  sc = device_get_softc(dev);
  *isrcp = GIC_INTR_ISRC(sc, irq);
 }
 return (error);
}
