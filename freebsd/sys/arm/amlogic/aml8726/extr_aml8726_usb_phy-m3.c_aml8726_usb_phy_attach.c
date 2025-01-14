
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aml8726_usb_phy_softc {int npwr_en; int res; struct aml8726_usb_phy_gpio* pwr_en; int dev; } ;
struct aml8726_usb_phy_gpio {void* pol; void* pin; int * dev; } ;
typedef scalar_t__ ssize_t ;
typedef int phandle_t ;
typedef void* pcell_t ;
typedef int device_t ;


 int AML_USB_PHY_CFG_A_PHYS_RST ;
 int AML_USB_PHY_CFG_A_PLL_RST ;
 int AML_USB_PHY_CFG_A_POR ;
 int AML_USB_PHY_CFG_A_RST ;
 int AML_USB_PHY_CFG_B_PHYS_RST ;
 int AML_USB_PHY_CFG_B_PLL_RST ;
 int AML_USB_PHY_CFG_B_POR ;
 int AML_USB_PHY_CFG_B_RST ;
 int AML_USB_PHY_CFG_CLK_DETECTED ;
 int AML_USB_PHY_CFG_CLK_DIV_MASK ;
 int AML_USB_PHY_CFG_CLK_DIV_SHIFT ;
 int AML_USB_PHY_CFG_CLK_EN ;
 int AML_USB_PHY_CFG_CLK_SEL_MASK ;
 int AML_USB_PHY_CFG_CLK_SEL_XTAL ;
 int AML_USB_PHY_CFG_REG ;
 int AML_USB_PHY_MISC_A_REG ;
 int AML_USB_PHY_MISC_B_REG ;
 int AML_USB_PHY_MISC_ID_OVERIDE_DEVICE ;
 int AML_USB_PHY_MISC_ID_OVERIDE_EN ;
 int AML_USB_PHY_MISC_ID_OVERIDE_HOST ;
 int CSR_BARRIER (struct aml8726_usb_phy_softc*,int ) ;
 int CSR_READ_4 (struct aml8726_usb_phy_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_usb_phy_softc*,int ,int) ;
 int DELAY (int) ;
 int ENXIO ;
 int GPIO_PIN_OUTPUT ;
 scalar_t__ GPIO_PIN_SET (int *,void*,int ) ;
 scalar_t__ GPIO_PIN_SETFLAGS (int *,void*,int ) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int * OF_device_from_xref (void*) ;
 scalar_t__ OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 int OF_prop_free (void**) ;
 int PIN_OFF_FLAG (void*) ;
 int PIN_ON_FLAG (void*) ;
 scalar_t__ aml8726_usb_phy_mode (char*,int*) ;
 int aml8726_usb_phy_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_release_resources (int ,int ,int ) ;
 struct aml8726_usb_phy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int free (struct aml8726_usb_phy_gpio*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
aml8726_usb_phy_attach(device_t dev)
{
 struct aml8726_usb_phy_softc *sc = device_get_softc(dev);
 int err;
 int npwr_en;
 pcell_t *prop;
 phandle_t node;
 ssize_t len;
 uint32_t div;
 uint32_t i;
 uint32_t mode_a;
 uint32_t mode_b;
 uint32_t value;

 sc->dev = dev;

 if (aml8726_usb_phy_mode("/soc/usb@c9040000", &mode_a) != 0) {
  device_printf(dev, "missing usb@c9040000 node in FDT\n");
  return (ENXIO);
 }

 if (aml8726_usb_phy_mode("/soc/usb@c90c0000", &mode_b) != 0) {
  device_printf(dev, "missing usb@c90c0000 node in FDT\n");
  return (ENXIO);
 }

 if (bus_alloc_resources(dev, aml8726_usb_phy_spec, sc->res)) {
  device_printf(dev, "can not allocate resources for device\n");
  return (ENXIO);
 }

 node = ofw_bus_get_node(dev);

 err = 0;

 len = OF_getencprop_alloc_multi(node, "usb-pwr-en",
     3 * sizeof(pcell_t), (void **)&prop);
 npwr_en = (len > 0) ? len : 0;

 sc->npwr_en = 0;
 sc->pwr_en = (struct aml8726_usb_phy_gpio *)
     malloc(npwr_en * sizeof (*sc->pwr_en), M_DEVBUF, M_WAITOK);

 for (i = 0; i < npwr_en; i++) {
  sc->pwr_en[i].dev = OF_device_from_xref(prop[i * 3]);
  sc->pwr_en[i].pin = prop[i * 3 + 1];
  sc->pwr_en[i].pol = prop[i * 3 + 2];

  if (sc->pwr_en[i].dev == ((void*)0)) {
   err = 1;
   break;
  }
 }

 OF_prop_free(prop);

 if (err) {
  device_printf(dev, "unable to parse gpio\n");
  goto fail;
 }


 for (i = 0; i < npwr_en; i++) {
  if (GPIO_PIN_SET(sc->pwr_en[i].dev, sc->pwr_en[i].pin,
      PIN_ON_FLAG(sc->pwr_en[i].pol)) != 0 ||
      GPIO_PIN_SETFLAGS(sc->pwr_en[i].dev, sc->pwr_en[i].pin,
      GPIO_PIN_OUTPUT) != 0) {
   device_printf(dev,
       "could not use gpio to control power\n");
   goto fail;
  }

  sc->npwr_en++;
 }





 div = 2;

 value = CSR_READ_4(sc, AML_USB_PHY_CFG_REG);

 value &= ~(AML_USB_PHY_CFG_CLK_DIV_MASK | AML_USB_PHY_CFG_CLK_SEL_MASK);

 value &= ~(AML_USB_PHY_CFG_A_RST | AML_USB_PHY_CFG_B_RST);
 value &= ~(AML_USB_PHY_CFG_A_PLL_RST | AML_USB_PHY_CFG_B_PLL_RST);
 value &= ~(AML_USB_PHY_CFG_A_PHYS_RST | AML_USB_PHY_CFG_B_PHYS_RST);
 value &= ~(AML_USB_PHY_CFG_A_POR | AML_USB_PHY_CFG_B_POR);

 value |= AML_USB_PHY_CFG_CLK_SEL_XTAL;
 value |= ((div - 1) << AML_USB_PHY_CFG_CLK_DIV_SHIFT) &
     AML_USB_PHY_CFG_CLK_DIV_MASK;
 value |= AML_USB_PHY_CFG_CLK_EN;

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);
 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);





 value |= (AML_USB_PHY_CFG_A_RST | AML_USB_PHY_CFG_B_RST);

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);
 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);

 DELAY(200);

 value &= ~(AML_USB_PHY_CFG_A_RST | AML_USB_PHY_CFG_B_RST);

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);
 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);

 DELAY(200);

 value |= (AML_USB_PHY_CFG_A_PLL_RST | AML_USB_PHY_CFG_B_PLL_RST);

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);
 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);

 DELAY(200);

 value &= ~(AML_USB_PHY_CFG_A_PLL_RST | AML_USB_PHY_CFG_B_PLL_RST);

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);
 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);

 DELAY(200);

 value |= (AML_USB_PHY_CFG_A_PHYS_RST | AML_USB_PHY_CFG_B_PHYS_RST);

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);
 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);

 DELAY(200);

 value &= ~(AML_USB_PHY_CFG_A_PHYS_RST | AML_USB_PHY_CFG_B_PHYS_RST);

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);
 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);

 DELAY(200);

 value |= (AML_USB_PHY_CFG_A_POR | AML_USB_PHY_CFG_B_POR);

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);
 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);

 DELAY(200);





 value &= ~(AML_USB_PHY_CFG_A_POR | AML_USB_PHY_CFG_B_POR);

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);

 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);

 DELAY(200);




 value = CSR_READ_4(sc, AML_USB_PHY_CFG_REG);
 if ((value & AML_USB_PHY_CFG_CLK_DETECTED) !=
     AML_USB_PHY_CFG_CLK_DETECTED)
  device_printf(dev, "PHY Clock not detected\n");





 value = CSR_READ_4(sc, AML_USB_PHY_MISC_A_REG);

 value &= ~(AML_USB_PHY_MISC_ID_OVERIDE_EN |
     AML_USB_PHY_MISC_ID_OVERIDE_DEVICE |
     AML_USB_PHY_MISC_ID_OVERIDE_HOST);
 value |= mode_a;

 CSR_WRITE_4(sc, AML_USB_PHY_MISC_A_REG, value);

 value = CSR_READ_4(sc, AML_USB_PHY_MISC_B_REG);

 value &= ~(AML_USB_PHY_MISC_ID_OVERIDE_EN |
     AML_USB_PHY_MISC_ID_OVERIDE_DEVICE |
     AML_USB_PHY_MISC_ID_OVERIDE_HOST);
 value |= mode_b;

 CSR_WRITE_4(sc, AML_USB_PHY_MISC_B_REG, value);

 CSR_BARRIER(sc, AML_USB_PHY_MISC_B_REG);

 return (0);

fail:

 i = sc->npwr_en;
 while (i-- != 0) {
  GPIO_PIN_SET(sc->pwr_en[i].dev, sc->pwr_en[i].pin,
      PIN_OFF_FLAG(sc->pwr_en[i].pol));
 }

 free (sc->pwr_en, M_DEVBUF);
 sc->pwr_en = ((void*)0);

 bus_release_resources(dev, aml8726_usb_phy_spec, sc->res);

 return (ENXIO);
}
