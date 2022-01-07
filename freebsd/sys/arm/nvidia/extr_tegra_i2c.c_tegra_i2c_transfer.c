
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_i2c_softc {int bus_inuse; int bus_err; scalar_t__ done; scalar_t__ msg_idx; struct iic_msg* msg; int mtx; } ;
struct iic_msg {scalar_t__ len; int flags; int * buf; } ;
typedef enum tegra_i2c_xfer_type { ____Placeholder_tegra_i2c_xfer_type } tegra_i2c_xfer_type ;
typedef int device_t ;


 int EINVAL ;
 int I2C_INTERRUPT_MASK_REGISTER ;
 int I2C_INTERRUPT_STATUS_REGISTER ;
 int I2C_REQUEST_TIMEOUT ;
 int IIC_M_NOSTART ;
 int IIC_M_NOSTOP ;
 int LOCK (struct tegra_i2c_softc*) ;
 int PZERO ;
 int SLEEP (struct tegra_i2c_softc*,int ) ;
 int UNLOCK (struct tegra_i2c_softc*) ;
 int WR4 (struct tegra_i2c_softc*,int ,int) ;
 int XFER_CONTINUE ;
 int XFER_REPEAT_START ;
 int XFER_STOP ;
 scalar_t__ cold ;
 struct tegra_i2c_softc* device_get_softc (int ) ;
 int msleep (scalar_t__*,int *,int ,char*,int ) ;
 int tegra_i2c_flush_fifo (struct tegra_i2c_softc*) ;
 int tegra_i2c_hw_init (struct tegra_i2c_softc*) ;
 int tegra_i2c_poll (struct tegra_i2c_softc*) ;
 int tegra_i2c_start_msg (struct tegra_i2c_softc*,struct iic_msg*,int) ;
 int wakeup (struct tegra_i2c_softc*) ;

__attribute__((used)) static int
tegra_i2c_transfer(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 int rv, i;
 struct tegra_i2c_softc *sc;
 enum tegra_i2c_xfer_type xtype;

 sc = device_get_softc(dev);
 LOCK(sc);


 while (sc->bus_inuse == 1)
  SLEEP(sc, 0);
 sc->bus_inuse = 1;

 rv = 0;
 for (i = 0; i < nmsgs; i++) {
  sc->msg = &msgs[i];
  sc->msg_idx = 0;
  sc->bus_err = 0;
  sc->done = 0;

  if (sc->msg == ((void*)0) || sc->msg->buf == ((void*)0) ||
      sc->msg->len == 0) {
   rv = EINVAL;
   break;
  }


  if (i == (nmsgs - 1)) {
   if (msgs[i].flags & IIC_M_NOSTOP)
    xtype = XFER_CONTINUE;
   else
    xtype = XFER_STOP;
  } else {
   if (msgs[i + 1].flags & IIC_M_NOSTART)
    xtype = XFER_CONTINUE;
   else
    xtype = XFER_REPEAT_START;
  }
  tegra_i2c_start_msg(sc, sc->msg, xtype);
  if (cold)
   rv = tegra_i2c_poll(sc);
  else
   rv = msleep(&sc->done, &sc->mtx, PZERO, "iic",
       I2C_REQUEST_TIMEOUT);

  WR4(sc, I2C_INTERRUPT_MASK_REGISTER, 0);
  WR4(sc, I2C_INTERRUPT_STATUS_REGISTER, 0xFFFFFFFF);
  if (rv == 0)
   rv = sc->bus_err;
  if (rv != 0)
   break;
 }

 if (rv != 0) {
  tegra_i2c_hw_init(sc);
  tegra_i2c_flush_fifo(sc);
 }

 sc->msg = ((void*)0);
 sc->msg_idx = 0;
 sc->bus_err = 0;
 sc->done = 0;


 sc->bus_inuse = 0;
 wakeup(sc);
 UNLOCK(sc);

 return (rv);
}
