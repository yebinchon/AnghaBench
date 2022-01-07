
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsb_softc {int status; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EIO ;
 int ETIMEDOUT ;
 int GLOBAL_INT_ENB ;
 int INT_TRANS_OVER ;
 int RSB_ASSERT_LOCKED (struct rsb_softc*) ;
 int RSB_CTRL ;
 int RSB_I2C_TIMEOUT ;
 int RSB_INTS ;
 int RSB_READ (struct rsb_softc*,int ) ;
 int RSB_WRITE (struct rsb_softc*,int ,int) ;
 int START_TRANS ;
 struct rsb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int hz ;

__attribute__((used)) static int
rsb_start(device_t dev)
{
 struct rsb_softc *sc;
 int error, retry;

 sc = device_get_softc(dev);

 RSB_ASSERT_LOCKED(sc);


 RSB_WRITE(sc, RSB_CTRL, GLOBAL_INT_ENB | START_TRANS);


 error = ETIMEDOUT;
 for (retry = RSB_I2C_TIMEOUT; retry > 0; retry--) {
  sc->status |= RSB_READ(sc, RSB_INTS);
  if ((sc->status & INT_TRANS_OVER) != 0) {
   error = 0;
   break;
  }
  DELAY((1000 * hz) / RSB_I2C_TIMEOUT);
 }
 if (error == 0 && (sc->status & INT_TRANS_OVER) == 0) {
  device_printf(dev, "transfer error, status 0x%08x\n",
      sc->status);
  error = EIO;
 }

 return (error);

}
