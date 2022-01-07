
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_softc {scalar_t__* ih_cookie; int * irq_res; int dev; } ;


 int CPSW_INTR_COUNT ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;

__attribute__((used)) static void
cpsw_intr_detach(struct cpsw_softc *sc)
{
 int i;

 for (i = 0; i < CPSW_INTR_COUNT; i++) {
  if (sc->ih_cookie[i]) {
   bus_teardown_intr(sc->dev, sc->irq_res[i],
       sc->ih_cookie[i]);
  }
 }
}
