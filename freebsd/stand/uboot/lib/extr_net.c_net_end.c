
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uboot_softc {int sc_handle; } ;
struct netif {int nif_unit; TYPE_1__* nif_driver; struct uboot_softc* nif_devdata; } ;
struct TYPE_2__ {int netif_bname; } ;


 int panic (char*,int ,int ,int) ;
 int ub_dev_close (int ) ;

__attribute__((used)) static void
net_end(struct netif *nif)
{
 struct uboot_softc *sc = nif->nif_devdata;
 int err;

 if ((err = ub_dev_close(sc->sc_handle)) != 0)
  panic("%s%d: net_end failed with error %d",
      nif->nif_driver->netif_bname, nif->nif_unit, err);
}
