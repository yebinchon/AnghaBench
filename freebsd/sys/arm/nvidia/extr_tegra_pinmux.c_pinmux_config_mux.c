
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_mux {int reg; } ;
struct pinmux_softc {int mux_mem_res; int dev; } ;
struct pincfg {int* params; int * function; } ;


 int ENXIO ;
 size_t PROP_ID_ENABLE_INPUT ;
 size_t PROP_ID_IORESET ;
 size_t PROP_ID_LOCK ;
 size_t PROP_ID_OPEN_DRAIN ;
 size_t PROP_ID_PULL ;
 size_t PROP_ID_RCV_SEL ;
 size_t PROP_ID_TRISTATE ;
 size_t TEGRA_MUX_ENABLE_INPUT_SHIFT ;
 int TEGRA_MUX_FUNCTION_MASK ;
 int TEGRA_MUX_FUNCTION_SHIFT ;
 int TEGRA_MUX_IORESET_SHIFT ;
 int TEGRA_MUX_LOCK_SHIFT ;
 int TEGRA_MUX_PUPD_MASK ;
 int TEGRA_MUX_PUPD_SHIFT ;
 int TEGRA_MUX_RCV_SEL_SHIFT ;
 int TEGRA_MUX_TRISTATE_SHIFT ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 int device_printf (int ,char*,int *,char*) ;
 int pinmux_mux_function (struct tegra_mux const*,int *) ;

__attribute__((used)) static int
pinmux_config_mux(struct pinmux_softc *sc, char *pin_name,
    const struct tegra_mux *mux, struct pincfg *cfg)
{
 int tmp;
 uint32_t reg;

 reg = bus_read_4(sc->mux_mem_res, mux->reg);

 if (cfg->function != ((void*)0)) {
  tmp = pinmux_mux_function(mux, cfg->function);
  if (tmp == -1) {
   device_printf(sc->dev,
       "Unknown function %s for pin %s\n", cfg->function,
       pin_name);
   return (ENXIO);
  }
  reg &= ~(TEGRA_MUX_FUNCTION_MASK << TEGRA_MUX_FUNCTION_SHIFT);
  reg |= (tmp & TEGRA_MUX_FUNCTION_MASK) <<
      TEGRA_MUX_FUNCTION_SHIFT;
 }
 if (cfg->params[PROP_ID_PULL] != -1) {
  reg &= ~(TEGRA_MUX_PUPD_MASK << TEGRA_MUX_PUPD_SHIFT);
  reg |= (cfg->params[PROP_ID_PULL] & TEGRA_MUX_PUPD_MASK) <<
      TEGRA_MUX_PUPD_SHIFT;
 }
 if (cfg->params[PROP_ID_TRISTATE] != -1) {
  reg &= ~(1 << TEGRA_MUX_TRISTATE_SHIFT);
  reg |= (cfg->params[PROP_ID_TRISTATE] & 1) <<
      TEGRA_MUX_TRISTATE_SHIFT;
 }
 if (cfg->params[TEGRA_MUX_ENABLE_INPUT_SHIFT] != -1) {
  reg &= ~(1 << TEGRA_MUX_ENABLE_INPUT_SHIFT);
  reg |= (cfg->params[TEGRA_MUX_ENABLE_INPUT_SHIFT] & 1) <<
      TEGRA_MUX_ENABLE_INPUT_SHIFT;
 }
 if (cfg->params[PROP_ID_ENABLE_INPUT] != -1) {
  reg &= ~(1 << TEGRA_MUX_ENABLE_INPUT_SHIFT);
  reg |= (cfg->params[PROP_ID_ENABLE_INPUT] & 1) <<
      TEGRA_MUX_ENABLE_INPUT_SHIFT;
 }
 if (cfg->params[PROP_ID_ENABLE_INPUT] != -1) {
  reg &= ~(1 << TEGRA_MUX_ENABLE_INPUT_SHIFT);
  reg |= (cfg->params[PROP_ID_OPEN_DRAIN] & 1) <<
      TEGRA_MUX_ENABLE_INPUT_SHIFT;
 }
 if (cfg->params[PROP_ID_LOCK] != -1) {
  reg &= ~(1 << TEGRA_MUX_LOCK_SHIFT);
  reg |= (cfg->params[PROP_ID_LOCK] & 1) <<
      TEGRA_MUX_LOCK_SHIFT;
 }
 if (cfg->params[PROP_ID_IORESET] != -1) {
  reg &= ~(1 << TEGRA_MUX_IORESET_SHIFT);
  reg |= (cfg->params[PROP_ID_IORESET] & 1) <<
      TEGRA_MUX_IORESET_SHIFT;
 }
 if (cfg->params[PROP_ID_RCV_SEL] != -1) {
  reg &= ~(1 << TEGRA_MUX_RCV_SEL_SHIFT);
  reg |= (cfg->params[PROP_ID_RCV_SEL] & 1) <<
      TEGRA_MUX_RCV_SEL_SHIFT;
 }
 bus_write_4(sc->mux_mem_res, mux->reg, reg);
 return (0);
}
