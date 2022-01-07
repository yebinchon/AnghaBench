
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct rsb_softc {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ rta; int addr; } ;


 int CMD_SRTA ;
 int DAR_DA_SHIFT ;
 int DAR_RTA_SHIFT ;
 int ENXIO ;
 int RSB_ASSERT_LOCKED (struct rsb_softc*) ;
 int RSB_CMD ;
 int RSB_DAR ;
 int RSB_INTS ;
 int RSB_READ (struct rsb_softc*,int ) ;
 int RSB_WRITE (struct rsb_softc*,int ,int) ;
 struct rsb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 TYPE_1__* rsb_rtamap ;
 int rsb_start (int ) ;

__attribute__((used)) static int
rsb_set_rta(device_t dev, uint16_t addr)
{
 struct rsb_softc *sc;
 uint8_t rta;
 int i;

 sc = device_get_softc(dev);

 RSB_ASSERT_LOCKED(sc);


 for (rta = 0, i = 0; rsb_rtamap[i].rta != 0; i++)
  if (rsb_rtamap[i].addr == addr) {
   rta = rsb_rtamap[i].rta;
   break;
  }
 if (rta == 0) {
  device_printf(dev, "RTA not known for address %#x\n", addr);
  return (ENXIO);
 }


 RSB_WRITE(sc, RSB_INTS, RSB_READ(sc, RSB_INTS));
 RSB_WRITE(sc, RSB_DAR, (addr << DAR_DA_SHIFT) | (rta << DAR_RTA_SHIFT));
 RSB_WRITE(sc, RSB_CMD, CMD_SRTA);

 return (rsb_start(dev));
}
