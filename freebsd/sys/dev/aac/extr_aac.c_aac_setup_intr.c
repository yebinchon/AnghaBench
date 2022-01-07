
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int flags; int aac_dev; int aac_intr; int aac_irq; } ;


 int AAC_FLAGS_NEW_COMM ;
 int EINVAL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int * aac_filter ;
 int * aac_new_intr ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int *,struct aac_softc*,int *) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
aac_setup_intr(struct aac_softc *sc)
{

 if (sc->flags & AAC_FLAGS_NEW_COMM) {
  if (bus_setup_intr(sc->aac_dev, sc->aac_irq,
       INTR_MPSAFE|INTR_TYPE_BIO, ((void*)0),
       aac_new_intr, sc, &sc->aac_intr)) {
   device_printf(sc->aac_dev, "can't set up interrupt\n");
   return (EINVAL);
  }
 } else {
  if (bus_setup_intr(sc->aac_dev, sc->aac_irq,
       INTR_TYPE_BIO, aac_filter, ((void*)0),
       sc, &sc->aac_intr)) {
   device_printf(sc->aac_dev,
          "can't set up interrupt filter\n");
   return (EINVAL);
  }
 }
 return (0);
}
