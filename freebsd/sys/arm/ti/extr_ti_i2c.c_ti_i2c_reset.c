
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct ti_i2c_softc {int sc_con_reg; int sc_fifo_trsh; int sc_mem_res; int * sc_iicbus; } ;
struct ti_i2c_clock_config {int frequency; int psc; int scll; int sclh; int hsscll; int hssclh; } ;




 int DELAY (int) ;
 int EBUSY ;
 int I2C_BUF_RXTRSH_SHIFT ;
 int I2C_BUF_TRSH_MASK ;
 int I2C_CON_I2C_EN ;
 int I2C_CON_MST ;
 int I2C_CON_OPMODE_HS ;
 int I2C_HSSCLH_SHIFT ;
 int I2C_HSSCLL_SHIFT ;
 int I2C_IE_AL ;
 int I2C_IE_ARDY ;
 int I2C_IE_NACK ;
 int I2C_IE_RDR ;
 int I2C_IE_RRDY ;
 int I2C_IE_XDR ;
 int I2C_IE_XRDY ;
 int I2C_REG_BUF ;
 int I2C_REG_CON ;
 int I2C_REG_IRQENABLE_SET ;
 int I2C_REG_PSC ;
 int I2C_REG_SCLH ;
 int I2C_REG_SCLL ;
 int I2C_REG_SYSC ;
 int I2C_REG_SYSC_SRST ;
 int I2C_REG_SYSS ;
 int I2C_SCLH_MASK ;
 int I2C_SCLL_MASK ;
 int I2C_SYSS_RDONE ;
 int IICBUS_GET_FREQUENCY (int *,int ) ;
 int bus_write_2 (int ,int ,int ) ;
 int panic (char*) ;
 struct ti_i2c_clock_config* ti_am335x_i2c_clock_configs ;
 int ti_chip () ;
 int ti_i2c_read_2 (struct ti_i2c_softc*,int ) ;
 int ti_i2c_write_2 (struct ti_i2c_softc*,int ,int) ;
 struct ti_i2c_clock_config* ti_omap4_i2c_clock_configs ;

__attribute__((used)) static int
ti_i2c_reset(struct ti_i2c_softc *sc, u_char speed)
{
 int timeout;
 struct ti_i2c_clock_config *clkcfg;
 u_int busfreq;
 uint16_t fifo_trsh, reg, scll, sclh;

 switch (ti_chip()) {
 default:
  panic("Unknown TI SoC, unable to reset the i2c");
 }
 if (sc->sc_iicbus == ((void*)0))
  busfreq = 100000;
 else
  busfreq = IICBUS_GET_FREQUENCY(sc->sc_iicbus, speed);
 for (;;) {
  if (clkcfg[1].frequency == 0 || clkcfg[1].frequency > busfreq)
   break;
  clkcfg++;
 }







 sc->sc_con_reg = 0;
 ti_i2c_write_2(sc, I2C_REG_CON, sc->sc_con_reg);


 bus_write_2(sc->sc_mem_res, I2C_REG_SYSC, I2C_REG_SYSC_SRST);






 ti_i2c_write_2(sc, I2C_REG_CON, I2C_CON_I2C_EN);


 timeout = 0;
 while ((ti_i2c_read_2(sc, I2C_REG_SYSS) & I2C_SYSS_RDONE) == 0) {
  if (timeout++ > 100)
   return (EBUSY);
  DELAY(100);
 }





 ti_i2c_write_2(sc, I2C_REG_CON, sc->sc_con_reg);
 ti_i2c_write_2(sc, I2C_REG_PSC, clkcfg->psc);







 scll = clkcfg->scll & I2C_SCLL_MASK;
 sclh = clkcfg->sclh & I2C_SCLH_MASK;
 switch (ti_chip()) {
 }


 ti_i2c_write_2(sc, I2C_REG_SCLL, scll);
 ti_i2c_write_2(sc, I2C_REG_SCLH, sclh);
 fifo_trsh = (sc->sc_fifo_trsh - 1) & I2C_BUF_TRSH_MASK;
 reg = fifo_trsh | (fifo_trsh << I2C_BUF_RXTRSH_SHIFT);
 ti_i2c_write_2(sc, I2C_REG_BUF, reg);
 sc->sc_con_reg |= I2C_CON_I2C_EN | I2C_CON_MST;
 ti_i2c_write_2(sc, I2C_REG_CON, sc->sc_con_reg);
 reg = I2C_IE_XDR |
     I2C_IE_XRDY |
     I2C_IE_RDR |
     I2C_IE_RRDY |
     I2C_IE_ARDY |
     I2C_IE_NACK |
     I2C_IE_AL;


 ti_i2c_write_2(sc, I2C_REG_IRQENABLE_SET, reg);
 return (0);
}
