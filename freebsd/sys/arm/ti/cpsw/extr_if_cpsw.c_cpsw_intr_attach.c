
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpsw_softc {int * ih_cookie; int * irq_res; int dev; } ;
struct TYPE_2__ {int cb; } ;


 int CPSW_INTR_COUNT ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,struct cpsw_softc*,int *) ;
 TYPE_1__* cpsw_intr_cb ;

__attribute__((used)) static int
cpsw_intr_attach(struct cpsw_softc *sc)
{
 int i;

 for (i = 0; i < CPSW_INTR_COUNT; i++) {
  if (bus_setup_intr(sc->dev, sc->irq_res[i],
      INTR_TYPE_NET | INTR_MPSAFE, ((void*)0),
      cpsw_intr_cb[i].cb, sc, &sc->ih_cookie[i]) != 0) {
   return (-1);
  }
 }

 return (0);
}
