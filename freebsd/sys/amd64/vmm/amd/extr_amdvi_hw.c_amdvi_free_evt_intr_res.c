
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {int event_irq; int event_rid; int * event_res; int * event_tag; } ;
typedef int device_t ;


 int PCIB_RELEASE_MSI (int ,int ,int,int *) ;
 int SYS_RES_IRQ ;
 int bus_delete_resource (int ,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_get_parent (int ) ;
 struct amdvi_softc* device_get_softc (int ) ;

__attribute__((used)) static void
amdvi_free_evt_intr_res(device_t dev)
{

 struct amdvi_softc *softc;

 softc = device_get_softc(dev);
 if (softc->event_tag != ((void*)0)) {
  bus_teardown_intr(dev, softc->event_res, softc->event_tag);
 }
 if (softc->event_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ, softc->event_rid,
      softc->event_res);
 }
 bus_delete_resource(dev, SYS_RES_IRQ, softc->event_rid);
 PCIB_RELEASE_MSI(device_get_parent(device_get_parent(dev)),
     dev, 1, &softc->event_irq);
}
