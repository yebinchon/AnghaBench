
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_mbox_softc {int dummy; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EAGAIN ;
 int EINVAL ;
 int TI_MBOX_FIFOSTATUS (int) ;
 int TI_MBOX_LOCK (struct ti_mbox_softc*) ;
 int TI_MBOX_MESSAGE (int) ;
 int TI_MBOX_UNLOCK (struct ti_mbox_softc*) ;
 struct ti_mbox_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int ti_mbox_reg_read (struct ti_mbox_softc*,int ) ;
 int ti_mbox_reg_write (struct ti_mbox_softc*,int ,int ) ;

__attribute__((used)) static int
ti_mbox_write(device_t dev, int chan, uint32_t data)
{
 int limit = 500;
 struct ti_mbox_softc *sc;

 if (chan < 0 || chan > 7)
  return (EINVAL);
 sc = device_get_softc(dev);
 TI_MBOX_LOCK(sc);

 while (ti_mbox_reg_read(sc, TI_MBOX_FIFOSTATUS(chan)) == 1 &&
     limit--) {
  DELAY(10);
 }
 if (limit == 0) {
  device_printf(dev, "FIFOSTAUS%d stuck\n", chan);
  TI_MBOX_UNLOCK(sc);
  return (EAGAIN);
 }
 ti_mbox_reg_write(sc, TI_MBOX_MESSAGE(chan), data);

 return (0);
}
