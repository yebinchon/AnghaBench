
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap4_wugen_sc {int sc_parent; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int PIC_DISABLE_INTR (int ,struct intr_irqsrc*) ;
 struct omap4_wugen_sc* device_get_softc (int ) ;

__attribute__((used)) static void
omap4_wugen_disable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct omap4_wugen_sc *sc = device_get_softc(dev);

 PIC_DISABLE_INTR(sc->sc_parent, isrc);
}
