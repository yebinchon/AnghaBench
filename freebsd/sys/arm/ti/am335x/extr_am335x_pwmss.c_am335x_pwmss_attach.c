
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct am335x_pwmss_softc {int sc_clk; int sc_dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int EINVAL ;
 int ENXIO ;
 int INVALID_CLK_IDENT ;
 int OF_child (int) ;
 int OF_peer (int) ;



 int SCM_PWMSS_CTRL ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 struct am335x_pwmss_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;
 int simplebus_add_device (int ,int,int ,int *,int,int *) ;
 int simplebus_init (int ,int) ;
 int ti_hwmods_get_clock (int ) ;
 int ti_prcm_clk_enable (int) ;
 int ti_scm_reg_read_4 (int ,int*) ;
 int ti_scm_reg_write_4 (int ,int) ;

__attribute__((used)) static int
am335x_pwmss_attach(device_t dev)
{
 struct am335x_pwmss_softc *sc;
 uint32_t reg, id;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->sc_clk = ti_hwmods_get_clock(dev);
 if (sc->sc_clk == INVALID_CLK_IDENT) {
  device_printf(dev, "failed to get device id based on ti,hwmods\n");
  return (EINVAL);
 }

 ti_prcm_clk_enable(sc->sc_clk);
 ti_scm_reg_read_4(SCM_PWMSS_CTRL, &reg);
 switch (sc->sc_clk) {
  case 130:
   id = 0;
   break;
  case 129:
   id = 1;
   break;

  case 128:
   id = 2;
   break;
  default:
   device_printf(dev, "unknown pwmss clock id: %d\n", sc->sc_clk);
   return (EINVAL);
 }
 reg |= (1 << id);
 ti_scm_reg_write_4(SCM_PWMSS_CTRL, reg);

 node = ofw_bus_get_node(dev);

 if (node == -1)
  return (ENXIO);

 simplebus_init(dev, node);




 bus_generic_probe(dev);




 for (node = OF_child(node); node > 0; node = OF_peer(node))
  simplebus_add_device(dev, node, 0, ((void*)0), -1, ((void*)0));

 return (bus_generic_attach(dev));
}
