
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fwohci_softc {int bus_id; int base_addr; scalar_t__ handle; int locator; int devid; int state; } ;


 int BIOSPCI_16BITS ;
 int BIOSPCI_32BITS ;
 int FWOHCI_STATE_DEAD ;
 int FWOHCI_STATE_INIT ;
 int OHCI_BUS_ID ;
 int OREAD (struct fwohci_softc*,int ) ;
 scalar_t__ PTOV (int ) ;
 int biospci_find_devclass (int,int,int *) ;
 int biospci_read_config (int ,int,int ,int *) ;
 int biospci_write_config (int ,int,int ,int) ;

__attribute__((used)) static void
fw_probe(int index, struct fwohci_softc *sc)
{
 int err;

 sc->state = FWOHCI_STATE_INIT;
 err = biospci_find_devclass(
  0x0c0010 ,
  index ,
  &sc->locator);

 if (err != 0) {
  sc->state = FWOHCI_STATE_DEAD;
  return;
 }

 biospci_write_config(sc->locator,
     0x4 ,
     BIOSPCI_16BITS,
     0x6 );

 biospci_read_config(sc->locator, 0x00 , BIOSPCI_32BITS,
  &sc->devid);
 biospci_read_config(sc->locator, 0x10 , BIOSPCI_32BITS,
  &sc->base_addr);

        sc->handle = (uint32_t)PTOV(sc->base_addr);
 sc->bus_id = OREAD(sc, OHCI_BUS_ID);

 return;
}
