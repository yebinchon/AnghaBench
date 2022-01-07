
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap4_wugen_sc {int sc_parent; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int PIC_MAP_INTR (int ,struct intr_map_data*,struct intr_irqsrc**) ;
 struct omap4_wugen_sc* device_get_softc (int ) ;

__attribute__((used)) static int
omap4_wugen_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct omap4_wugen_sc *sc = device_get_softc(dev);

 return (PIC_MAP_INTR(sc->sc_parent, data, isrcp));
}
