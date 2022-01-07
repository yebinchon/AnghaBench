
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uboot_softc {unsigned long sc_txbufp; unsigned long sc_txbuf; int sc_handle; } ;
struct netif {char* nif_unit; TYPE_2__* nif_driver; struct uboot_softc* nif_devdata; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct iodesc {int myea; TYPE_3__ myip; struct netif* io_netif; } ;
struct TYPE_4__ {int hwaddr; } ;
struct device_info {TYPE_1__ di_net; } ;
struct TYPE_5__ {char* netif_bname; } ;


 unsigned long PKTALIGN ;
 int ether_sprintf (int ) ;
 int get_env_net_params () ;
 scalar_t__ memcmp (int ,char*,int) ;
 int memcpy (int ,int ,int) ;
 TYPE_3__ myip ;
 int panic (char*,char*,char*,...) ;
 int printf (char*,char*,char*,int ) ;
 struct device_info* ub_dev_get (int ) ;
 int ub_dev_open (int ) ;
 struct uboot_softc uboot_softc ;

__attribute__((used)) static void
net_init(struct iodesc *desc, void *machdep_hint)
{
 struct netif *nif = desc->io_netif;
 struct uboot_softc *sc;
 struct device_info *di;
 int err;

 sc = nif->nif_devdata = &uboot_softc;

 if ((err = ub_dev_open(sc->sc_handle)) != 0)
  panic("%s%d: initialisation failed with error %d",
      nif->nif_driver->netif_bname, nif->nif_unit, err);


 di = ub_dev_get(sc->sc_handle);
 memcpy(desc->myea, di->di_net.hwaddr, 6);
 if (memcmp (desc->myea, "\0\0\0\0\0\0", 6) == 0) {
  panic("%s%d: empty ethernet address!",
      nif->nif_driver->netif_bname, nif->nif_unit);
 }


 get_env_net_params();
 if (myip.s_addr != 0)
  desc->myip = myip;







 sc->sc_txbufp = sc->sc_txbuf;
 if ((unsigned long)sc->sc_txbufp % PKTALIGN)
  sc->sc_txbufp += PKTALIGN -
      (unsigned long)sc->sc_txbufp % PKTALIGN;
}
