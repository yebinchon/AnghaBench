
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_mux {int gpio_num; } ;
struct tegra_grp {int dummy; } ;
struct pinmux_softc {int dev; int mipi_mem_res; } ;
struct pincfg {char* function; } ;


 int ENXIO ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 int device_printf (int ,char*,char*) ;
 int pinmux_config_grp (struct pinmux_softc*,char*,struct tegra_grp const*,struct pincfg*) ;
 int pinmux_config_mux (struct pinmux_softc*,char*,struct tegra_mux const*,struct pincfg*) ;
 struct tegra_grp* pinmux_search_grp (char*) ;
 struct tegra_mux* pinmux_search_mux (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
pinmux_config_node(struct pinmux_softc *sc, char *pin_name, struct pincfg *cfg)
{
 const struct tegra_mux *mux;
 const struct tegra_grp *grp;
 uint32_t reg;
 int rv;


 if (strcmp(pin_name, "dsi_b") == 0) {
  if (cfg->function == ((void*)0)) {

   return (0);
  }
  reg = bus_read_4(sc->mipi_mem_res, 0);
  if (strcmp(cfg->function, "csi") == 0)
   reg &= ~(1 << 1);
  else if (strcmp(cfg->function, "dsi_b") == 0)
   reg |= (1 << 1);
  bus_write_4(sc->mipi_mem_res, 0, reg);
 }


 mux = pinmux_search_mux(pin_name);
 if (mux != ((void*)0)) {
  if (mux->gpio_num != -1) {

  }
  rv = pinmux_config_mux(sc, pin_name, mux, cfg);
  return (rv);
 }


 grp = pinmux_search_grp(pin_name);
 if (grp != ((void*)0)) {
  rv = pinmux_config_grp(sc, pin_name, grp, cfg);
  return (rv);
 }

 device_printf(sc->dev, "Unknown pin: %s\n", pin_name);
 return (ENXIO);
}
