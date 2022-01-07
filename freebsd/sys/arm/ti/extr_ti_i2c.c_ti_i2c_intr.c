
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ti_i2c_softc {int sc_error; int * sc_buffer; } ;


 int EINVAL ;
 int I2C_REG_IRQENABLE_SET ;
 int I2C_REG_STATUS ;
 int TI_I2C_LOCK (struct ti_i2c_softc*) ;
 int TI_I2C_UNLOCK (struct ti_i2c_softc*) ;
 int ti_i2c_dbg (struct ti_i2c_softc*,char*) ;
 int ti_i2c_read_2 (struct ti_i2c_softc*,int ) ;
 int ti_i2c_transfer_intr (struct ti_i2c_softc*,int ) ;
 int wakeup (struct ti_i2c_softc*) ;

__attribute__((used)) static void
ti_i2c_intr(void *arg)
{
 int done;
 struct ti_i2c_softc *sc;
 uint16_t events, status;

  sc = (struct ti_i2c_softc *)arg;

 TI_I2C_LOCK(sc);

 status = ti_i2c_read_2(sc, I2C_REG_STATUS);
 if (status == 0) {
  TI_I2C_UNLOCK(sc);
  return;
 }


 events = ti_i2c_read_2(sc, I2C_REG_IRQENABLE_SET);


 status &= events;

 done = 0;

 if (sc->sc_buffer != ((void*)0))
  done = ti_i2c_transfer_intr(sc, status);
 else {
  ti_i2c_dbg(sc, "Transfer interrupt without buffer\n");
  sc->sc_error = EINVAL;
  done = 1;
 }

 if (done)

  wakeup(sc);

 TI_I2C_UNLOCK(sc);
}
