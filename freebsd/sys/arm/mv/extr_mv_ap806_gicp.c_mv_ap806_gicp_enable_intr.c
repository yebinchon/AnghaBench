
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_ap806_gicp_softc {int parent; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int PIC_ENABLE_INTR (int ,struct intr_irqsrc*) ;
 struct mv_ap806_gicp_softc* device_get_softc (int ) ;

__attribute__((used)) static void
mv_ap806_gicp_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct mv_ap806_gicp_softc *sc;

 sc = device_get_softc(dev);

 PIC_ENABLE_INTR(sc->parent, isrc);
}
