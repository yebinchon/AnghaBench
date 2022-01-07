
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int u_char ;
struct rk_i2c_softc {int iicbus; } ;
typedef int device_t ;


 int IICBUS_GET_FREQUENCY (int ,int ) ;
 int RK_I2C_CLKDIV ;
 int RK_I2C_CON ;
 int RK_I2C_LOCK (struct rk_i2c_softc*) ;
 int RK_I2C_UNLOCK (struct rk_i2c_softc*) ;
 int RK_I2C_WRITE (struct rk_i2c_softc*,int ,int ) ;
 struct rk_i2c_softc* device_get_softc (int ) ;
 int rk_i2c_get_clkdiv (struct rk_i2c_softc*,int ) ;

__attribute__((used)) static int
rk_i2c_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 struct rk_i2c_softc *sc;
 uint32_t clkdiv;
 u_int busfreq;

 sc = device_get_softc(dev);

 busfreq = IICBUS_GET_FREQUENCY(sc->iicbus, speed);

 clkdiv = rk_i2c_get_clkdiv(sc, busfreq);

 RK_I2C_LOCK(sc);


 RK_I2C_WRITE(sc, RK_I2C_CLKDIV, clkdiv);


 RK_I2C_WRITE(sc, RK_I2C_CON, 0);

 RK_I2C_UNLOCK(sc);

 return (0);
}
