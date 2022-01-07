
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct mv_ap806_sei_softc {TYPE_1__* isrcs; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {struct intr_irqsrc isrc; } ;


 struct mv_ap806_sei_softc* device_get_softc (int ) ;
 int mv_ap806_sei_map (int ,struct intr_map_data*,size_t*) ;

__attribute__((used)) static int
mv_ap806_sei_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct mv_ap806_sei_softc *sc;
 u_int irq;
 int rv;

 sc = device_get_softc(dev);
 rv = mv_ap806_sei_map(dev, data, &irq);
 if (rv == 0)
  *isrcp = &sc->isrcs[irq].isrc;

 return (rv);
}
