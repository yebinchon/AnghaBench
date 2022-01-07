
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anadig_softc {int * res; int bsh; int bst; } ;
typedef int device_t ;


 int ANADIG_PLL1_CTRL ;
 int ANADIG_PLL2_CTRL ;
 int ANADIG_PLL3_CTRL ;
 int ANADIG_PLL4_CTRL ;
 int ANADIG_PLL5_CTRL ;
 int ANADIG_PLL6_CTRL ;
 int ANADIG_PLL7_CTRL ;
 int ANADIG_REG_3P0 ;
 int ENABLE_LINREG ;
 int ENXIO ;
 int EN_CLK_TO_UTMI ;
 int READ4 (struct anadig_softc*,int ) ;
 int USB_ANALOG_USB_MISC (int) ;
 int USB_MISC (int) ;
 int WRITE4 (struct anadig_softc*,int ,int) ;
 struct anadig_softc* anadig_sc ;
 int anadig_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct anadig_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int enable_pll (struct anadig_softc*,int ) ;
 int printf (char*,int) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
anadig_attach(device_t dev)
{
 struct anadig_softc *sc;
 int reg;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, anadig_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 anadig_sc = sc;


 enable_pll(sc, ANADIG_PLL3_CTRL);
 enable_pll(sc, ANADIG_PLL7_CTRL);


 enable_pll(sc, ANADIG_PLL1_CTRL);
 enable_pll(sc, ANADIG_PLL2_CTRL);
 enable_pll(sc, ANADIG_PLL4_CTRL);
 enable_pll(sc, ANADIG_PLL5_CTRL);
 enable_pll(sc, ANADIG_PLL6_CTRL);


 reg = READ4(sc, ANADIG_REG_3P0);
 reg |= (ENABLE_LINREG);
 WRITE4(sc, ANADIG_REG_3P0, reg);


 reg = READ4(sc, USB_MISC(0));
 reg |= (EN_CLK_TO_UTMI);
 WRITE4(sc, USB_MISC(0), reg);

 reg = READ4(sc, USB_MISC(1));
 reg |= (EN_CLK_TO_UTMI);
 WRITE4(sc, USB_MISC(1), reg);
 return (0);
}
