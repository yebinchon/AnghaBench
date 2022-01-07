
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ti_i2c_softc {int sc_bus_inuse; int sc_error; int sc_con_reg; struct iic_msg* sc_buffer; int sc_timeout; int sc_mtx; scalar_t__ sc_buffer_pos; } ;
struct iic_msg {int len; int flags; int slave; int * buf; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EBUSY ;
 int EINVAL ;
 int I2C_BUF_RXFIFO_CLR ;
 int I2C_BUF_TXFIFO_CLR ;
 int I2C_CON_MST ;
 int I2C_CON_STP ;
 int I2C_CON_STT ;
 int I2C_CON_TRX ;
 int I2C_REG_BUF ;
 int I2C_REG_CNT ;
 int I2C_REG_CON ;
 int I2C_REG_SA ;
 int I2C_REG_STATUS_RAW ;
 int I2C_STAT_BB ;
 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int TI_I2C_LOCK (struct ti_i2c_softc*) ;
 int TI_I2C_UNLOCK (struct ti_i2c_softc*) ;
 struct ti_i2c_softc* device_get_softc (int ) ;
 int mtx_sleep (struct ti_i2c_softc*,int *,int ,char*,int ) ;
 int ti_i2c_read_2 (struct ti_i2c_softc*,int ) ;
 int ti_i2c_write_2 (struct ti_i2c_softc*,int ,int) ;
 int wakeup (struct ti_i2c_softc*) ;

__attribute__((used)) static int
ti_i2c_transfer(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 int err, i, repstart, timeout;
 struct ti_i2c_softc *sc;
 uint16_t reg;

  sc = device_get_softc(dev);
 TI_I2C_LOCK(sc);


 while (sc->sc_bus_inuse == 1)
  mtx_sleep(sc, &sc->sc_mtx, 0, "i2cbuswait", 0);


 sc->sc_bus_inuse = 1;

 err = 0;
 repstart = 0;
 for (i = 0; i < nmsgs; i++) {

  sc->sc_buffer = &msgs[i];
  sc->sc_buffer_pos = 0;
  sc->sc_error = 0;


  if (sc->sc_buffer == ((void*)0) || sc->sc_buffer->buf == ((void*)0) ||
      sc->sc_buffer->len == 0) {
   err = EINVAL;
   break;
  }


  if (repstart == 0) {




   timeout = 0;
   while (ti_i2c_read_2(sc, I2C_REG_STATUS_RAW) & I2C_STAT_BB) {
    if (timeout++ > 100) {
     err = EBUSY;
     goto out;
    }
    DELAY(1000);
   }
   timeout = 0;
  } else
   repstart = 0;

  if (sc->sc_buffer->flags & IIC_M_NOSTOP)
   repstart = 1;


  ti_i2c_write_2(sc, I2C_REG_SA, msgs[i].slave >> 1);


  ti_i2c_write_2(sc, I2C_REG_CNT, sc->sc_buffer->len);


  reg = ti_i2c_read_2(sc, I2C_REG_BUF);
  reg |= I2C_BUF_RXFIFO_CLR | I2C_BUF_TXFIFO_CLR;
  ti_i2c_write_2(sc, I2C_REG_BUF, reg);

  reg = sc->sc_con_reg | I2C_CON_STT;
  if (repstart == 0)
   reg |= I2C_CON_STP;
  if ((sc->sc_buffer->flags & IIC_M_RD) == 0)
   reg |= I2C_CON_TRX;
  ti_i2c_write_2(sc, I2C_REG_CON, reg);


  err = mtx_sleep(sc, &sc->sc_mtx, 0, "i2ciowait", sc->sc_timeout);
  if (err == 0)
   err = sc->sc_error;

  if (err)
   break;
 }

out:
 if (timeout == 0) {
  while (ti_i2c_read_2(sc, I2C_REG_STATUS_RAW) & I2C_STAT_BB) {
   if (timeout++ > 100)
    break;
   DELAY(1000);
  }
 }

 if ((ti_i2c_read_2(sc, I2C_REG_CON) & I2C_CON_MST) == 0)
  ti_i2c_write_2(sc, I2C_REG_CON, sc->sc_con_reg);

 sc->sc_buffer = ((void*)0);
 sc->sc_bus_inuse = 0;


 wakeup(sc);

 TI_I2C_UNLOCK(sc);

 return (err);
}
