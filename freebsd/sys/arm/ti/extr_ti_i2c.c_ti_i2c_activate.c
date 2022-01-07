
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_i2c_softc {int clk_id; } ;
typedef int device_t ;


 int IIC_UNKNOWN ;
 scalar_t__ device_get_softc (int ) ;
 int ti_i2c_reset (struct ti_i2c_softc*,int ) ;
 int ti_prcm_clk_enable (int ) ;

__attribute__((used)) static int
ti_i2c_activate(device_t dev)
{
 int err;
 struct ti_i2c_softc *sc;

 sc = (struct ti_i2c_softc*)device_get_softc(dev);





 err = ti_prcm_clk_enable(sc->clk_id);
 if (err)
  return (err);

 return (ti_i2c_reset(sc, IIC_UNKNOWN));
}
