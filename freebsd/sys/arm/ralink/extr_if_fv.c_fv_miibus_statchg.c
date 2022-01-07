
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fv_softc {int fv_link_task; } ;
typedef int device_t ;


 struct fv_softc* device_get_softc (int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
fv_miibus_statchg(device_t dev)
{
 struct fv_softc *sc;

 sc = device_get_softc(dev);
 taskqueue_enqueue(taskqueue_swi, &sc->fv_link_task);
}
