
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_i2c_softc {int clk_id; int * sc_irq_res; int * sc_mem_res; int * sc_irq_h; } ;
typedef int device_t ;


 int I2C_REG_CON ;
 int I2C_REG_IRQENABLE_CLR ;
 int I2C_REG_STATUS ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 struct ti_i2c_softc* device_get_softc (int ) ;
 int ti_i2c_write_2 (struct ti_i2c_softc*,int ,int) ;
 int ti_prcm_clk_disable (int ) ;

__attribute__((used)) static void
ti_i2c_deactivate(device_t dev)
{
 struct ti_i2c_softc *sc = device_get_softc(dev);


 ti_i2c_write_2(sc, I2C_REG_IRQENABLE_CLR, 0xffff);
 ti_i2c_write_2(sc, I2C_REG_STATUS, 0xffff);
 ti_i2c_write_2(sc, I2C_REG_CON, 0);


 if (sc->sc_irq_h != ((void*)0)) {
  bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_irq_h);
  sc->sc_irq_h = ((void*)0);
 }


 if (sc->sc_mem_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  sc->sc_mem_res = ((void*)0);
 }


 if (sc->sc_irq_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
  sc->sc_irq_res = ((void*)0);
 }


 ti_prcm_clk_disable(sc->clk_id);
}
