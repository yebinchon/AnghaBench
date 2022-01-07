
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_i2c_softc {int dummy; } ;


 int RK_I2C_LOCK (struct rk_i2c_softc*) ;
 int RK_I2C_UNLOCK (struct rk_i2c_softc*) ;
 int rk_i2c_intr_locked (struct rk_i2c_softc*) ;

__attribute__((used)) static void
rk_i2c_intr(void *arg)
{
 struct rk_i2c_softc *sc;

 sc = (struct rk_i2c_softc *)arg;

 RK_I2C_LOCK(sc);
 rk_i2c_intr_locked(sc);
 RK_I2C_UNLOCK(sc);
}
