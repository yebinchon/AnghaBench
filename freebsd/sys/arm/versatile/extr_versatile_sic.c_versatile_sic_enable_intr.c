
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct versatile_sic_softc {int dummy; } ;
struct versatile_sic_irqsrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int SIC_ENSET ;
 int SIC_LOCK (struct versatile_sic_softc*) ;
 int SIC_UNLOCK (struct versatile_sic_softc*) ;
 int SIC_WRITE_4 (struct versatile_sic_softc*,int ,int) ;
 struct versatile_sic_softc* device_get_softc (int ) ;

__attribute__((used)) static void
versatile_sic_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct versatile_sic_softc *sc;
 struct versatile_sic_irqsrc *src;

 sc = device_get_softc(dev);
 src = (struct versatile_sic_irqsrc *)isrc;

 SIC_LOCK(sc);
 SIC_WRITE_4(sc, SIC_ENSET, (1 << src->irq));
 SIC_UNLOCK(sc);
}
