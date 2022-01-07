
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct uart_class {int dummy; } ;
struct TYPE_3__ {struct uart_class* sc_class; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct tegra_softc {int clk; int reset; TYPE_2__ ns8250_base; } ;
struct ofw_compat_data {scalar_t__ ocd_data; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_index (int ,int ,int ,int *) ;
 int clk_get_freq (int ,scalar_t__*) ;
 int compat_data ;
 struct tegra_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hwreset_deassert (int ) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int *) ;
 int ofw_bus_get_node (int ) ;
 struct ofw_compat_data* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;
 int uart_bus_probe (int ,int,int ,int,int ,int ,int ) ;
 int uart_fdt_get_shift1 (int ) ;

__attribute__((used)) static int
tegra_uart_probe(device_t dev)
{
 struct tegra_softc *sc;
 phandle_t node;
 uint64_t freq;
 int shift;
 int rv;
 const struct ofw_compat_data *cd;

 sc = device_get_softc(dev);
 if (!ofw_bus_status_okay(dev))
  return (ENXIO);
 cd = ofw_bus_search_compatible(dev, compat_data);
 if (cd->ocd_data == 0)
  return (ENXIO);
 sc->ns8250_base.base.sc_class = (struct uart_class *)cd->ocd_data;

 rv = hwreset_get_by_ofw_name(dev, 0, "serial", &sc->reset);
 if (rv != 0) {
  device_printf(dev, "Cannot get 'serial' reset\n");
  return (ENXIO);
 }
 rv = hwreset_deassert(sc->reset);
 if (rv != 0) {
  device_printf(dev, "Cannot unreset 'serial' reset\n");
  return (ENXIO);
 }

 node = ofw_bus_get_node(dev);
 shift = uart_fdt_get_shift1(node);
 rv = clk_get_by_ofw_index(dev, 0, 0, &sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot get UART clock: %d\n", rv);
  return (ENXIO);
 }
 rv = clk_enable(sc->clk);
 if (rv != 0) {
  device_printf(dev, "Cannot enable UART clock: %d\n", rv);
  return (ENXIO);
 }
 rv = clk_get_freq(sc->clk, &freq);
 if (rv != 0) {
  device_printf(dev, "Cannot enable UART clock: %d\n", rv);
  return (ENXIO);
 }
 return (uart_bus_probe(dev, shift, 0, (int)freq, 0, 0, 0));
}
