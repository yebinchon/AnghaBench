
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
struct arm_gic_softc {int dummy; } ;
typedef int device_t ;


 struct intr_irqsrc* GIC_INTR_ISRC (struct arm_gic_softc*,int ) ;
 struct arm_gic_softc* device_get_softc (int ) ;
 int gic_map_intr (int ,struct intr_map_data*,int *,int *,int *) ;

__attribute__((used)) static int
arm_gic_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 int error;
 u_int irq;
 struct arm_gic_softc *sc;

 error = gic_map_intr(dev, data, &irq, ((void*)0), ((void*)0));
 if (error == 0) {
  sc = device_get_softc(dev);
  *isrcp = GIC_INTR_ISRC(sc, irq);
 }
 return (error);
}
