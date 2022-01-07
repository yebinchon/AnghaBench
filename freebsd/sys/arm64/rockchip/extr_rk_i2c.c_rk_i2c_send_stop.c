
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_i2c_softc {int state; } ;


 int RK_I2C_CON ;
 int RK_I2C_CON_STOP ;
 int RK_I2C_IEN ;
 int RK_I2C_IEN_STOPIEN ;
 int RK_I2C_READ (struct rk_i2c_softc*,int ) ;
 int RK_I2C_WRITE (struct rk_i2c_softc*,int ,int ) ;
 int STATE_STOP ;

__attribute__((used)) static void
rk_i2c_send_stop(struct rk_i2c_softc *sc)
{
 uint32_t reg;

 RK_I2C_WRITE(sc, RK_I2C_IEN, RK_I2C_IEN_STOPIEN);

 sc->state = STATE_STOP;

 reg = RK_I2C_READ(sc, RK_I2C_CON);
 reg |= RK_I2C_CON_STOP;
 RK_I2C_WRITE(sc, RK_I2C_CON, reg);
}
