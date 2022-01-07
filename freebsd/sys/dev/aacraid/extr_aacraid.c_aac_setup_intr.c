
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct aac_softc {int aac_max_msix; int* aac_irq_rid; void** aac_intr; TYPE_1__* aac_msix; int aac_dev; struct resource** aac_irq; scalar_t__ msi_tupelo; scalar_t__ msi_enabled; } ;
struct TYPE_2__ {int vector_no; struct aac_softc* sc; } ;


 int EINVAL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 scalar_t__ aac_bus_setup_intr (int ,struct resource*,int,int *,int ,TYPE_1__*,void**) ;
 int aacraid_new_intr_type1 ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
aac_setup_intr(struct aac_softc *sc)
{
 int i, msi_count, rid;
 struct resource *res;
 void *tag;

 msi_count = sc->aac_max_msix;
 rid = ((sc->msi_enabled || sc->msi_tupelo)? 1:0);

 for (i = 0; i < msi_count; i++, rid++) {
  if ((res = bus_alloc_resource_any(sc->aac_dev,SYS_RES_IRQ, &rid,
   RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
   device_printf(sc->aac_dev,"can't allocate interrupt\n");
   return (EINVAL);
  }
  sc->aac_irq_rid[i] = rid;
  sc->aac_irq[i] = res;
  if (aac_bus_setup_intr(sc->aac_dev, res,
   INTR_MPSAFE | INTR_TYPE_BIO, ((void*)0),
   aacraid_new_intr_type1, &sc->aac_msix[i], &tag)) {
   device_printf(sc->aac_dev, "can't set up interrupt\n");
   return (EINVAL);
  }
  sc->aac_msix[i].vector_no = i;
  sc->aac_msix[i].sc = sc;
  sc->aac_intr[i] = tag;
 }

 return (0);
}
