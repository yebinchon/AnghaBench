
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct a10hdmi_softc {int clk_lcd; } ;
typedef int clk_t ;


 int clk_get_freq (int ,int*) ;
 char* clk_get_name (int ) ;
 int clk_get_parent (int ,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
a10hdmi_get_tcon_config(struct a10hdmi_softc *sc, int *div, int *dbl)
{
 uint64_t lcd_fin, lcd_fout;
 clk_t clk_lcd_parent;
 const char *pname;
 int error;

 error = clk_get_parent(sc->clk_lcd, &clk_lcd_parent);
 if (error != 0)
  return (error);


 error = clk_get_freq(sc->clk_lcd, &lcd_fout);
 if (error != 0)
  return (error);
 error = clk_get_freq(clk_lcd_parent, &lcd_fin);
 if (error != 0)
  return (error);
 *div = lcd_fin / lcd_fout;



 pname = clk_get_name(clk_lcd_parent);
 if (strcmp(pname, "pll3") == 0 || strcmp(pname, "pll7") == 0)
  *dbl = 0;
 else
  *dbl = 1;

 return (0);
}
