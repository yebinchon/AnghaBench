
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_pinctrl_softc {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENOENT ;
 int OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 int OF_node_from_xref (int ) ;
 struct rk_pinctrl_softc* device_get_softc (int ) ;
 int rk_pinctrl_configure_pin (struct rk_pinctrl_softc*,int *) ;

__attribute__((used)) static int
rk_pinctrl_configure_pins(device_t dev, phandle_t cfgxref)
{
 struct rk_pinctrl_softc *sc;
 phandle_t node;
 uint32_t *pins;
 int i, npins;

 sc = device_get_softc(dev);
 node = OF_node_from_xref(cfgxref);

 npins = OF_getencprop_alloc_multi(node, "rockchip,pins", sizeof(*pins),
     (void **)&pins);
 if (npins <= 0)
  return (ENOENT);

 for (i = 0; i != npins; i += 4)
  rk_pinctrl_configure_pin(sc, pins + i);

 return (0);
}
