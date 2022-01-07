
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cp110_icu_softc {int parent; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int PIC_POST_FILTER (int ,struct intr_irqsrc*) ;
 struct mv_cp110_icu_softc* device_get_softc (int ) ;

__attribute__((used)) static void
mv_cp110_icu_post_filter(device_t dev, struct intr_irqsrc *isrc)
{
 struct mv_cp110_icu_softc *sc;

 sc = device_get_softc(dev);

 PIC_POST_FILTER(sc->parent, isrc);
}
