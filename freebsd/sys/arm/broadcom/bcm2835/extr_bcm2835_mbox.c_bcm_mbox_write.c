
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_mbox_softc {scalar_t__* have_message; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EAGAIN ;
 int MBOX_LOCK (struct bcm_mbox_softc*) ;
 int MBOX_MSG (int,int ) ;
 int MBOX_UNLOCK (struct bcm_mbox_softc*) ;
 int REG_STATUS ;
 int REG_WRITE ;
 int STATUS_FULL ;
 struct bcm_mbox_softc* device_get_softc (int ) ;
 int dprintf (char*,int,int ) ;
 int mbox_read_4 (struct bcm_mbox_softc*,int ) ;
 int mbox_write_4 (struct bcm_mbox_softc*,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
bcm_mbox_write(device_t dev, int chan, uint32_t data)
{
 int limit = 1000;
 struct bcm_mbox_softc *sc = device_get_softc(dev);

 dprintf("bcm_mbox_write: chan %d, data %08x\n", chan, data);
 MBOX_LOCK(sc);
 sc->have_message[chan] = 0;
 while ((mbox_read_4(sc, REG_STATUS) & STATUS_FULL) && --limit)
  DELAY(5);
 if (limit == 0) {
  printf("bcm_mbox_write: STATUS_FULL stuck");
  MBOX_UNLOCK(sc);
  return (EAGAIN);
 }
 mbox_write_4(sc, REG_WRITE, MBOX_MSG(chan, data));
 MBOX_UNLOCK(sc);

 return (0);
}
