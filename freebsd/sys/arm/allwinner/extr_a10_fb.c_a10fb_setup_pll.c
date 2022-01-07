
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct a10fb_softc {int dev; } ;
typedef int clk_t ;


 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_set_freq (int ,int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
a10fb_setup_pll(struct a10fb_softc *sc, uint64_t freq)
{
 clk_t clk_sclk1, clk_sclk2;
 int error;

 error = clk_get_by_ofw_name(sc->dev, 0, "lcd_ch1_sclk1", &clk_sclk1);
 if (error != 0) {
  device_printf(sc->dev, "cannot find clk 'lcd_ch1_sclk1'\n");
  return (error);
 }
 error = clk_get_by_ofw_name(sc->dev, 0, "lcd_ch1_sclk2", &clk_sclk2);
 if (error != 0) {
  device_printf(sc->dev, "cannot find clk 'lcd_ch1_sclk2'\n");
  return (error);
 }

 error = clk_set_freq(clk_sclk2, freq, 0);
 if (error != 0) {
  device_printf(sc->dev, "cannot set lcd ch1 frequency\n");
  return (error);
 }
 error = clk_enable(clk_sclk2);
 if (error != 0) {
  device_printf(sc->dev, "cannot enable lcd ch1 sclk2\n");
  return (error);
 }
 error = clk_enable(clk_sclk1);
 if (error != 0) {
  device_printf(sc->dev, "cannot enable lcd ch1 sclk1\n");
  return (error);
 }

 return (0);
}
