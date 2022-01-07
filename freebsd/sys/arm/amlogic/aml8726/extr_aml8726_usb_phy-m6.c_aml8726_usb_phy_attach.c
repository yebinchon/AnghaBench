
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {char pin; char pol; int * dev; } ;
struct aml8726_usb_phy_softc {int npwr_en; int res; struct aml8726_usb_phy_gpio* pwr_en; TYPE_1__ hub_rst; scalar_t__ force_aca; int dev; } ;
struct aml8726_usb_phy_gpio {char pin; char pol; int * dev; } ;
typedef int ssize_t ;
typedef int phandle_t ;
typedef char pcell_t ;
typedef int device_t ;




 int AML_USB_PHY_ADP_BC_ACA_EN ;
 int AML_USB_PHY_ADP_BC_ACA_FLOATING ;
 int AML_USB_PHY_ADP_BC_REG ;
 int AML_USB_PHY_CFG_CLK_DIV_MASK ;
 int AML_USB_PHY_CFG_CLK_DIV_SHIFT ;
 int AML_USB_PHY_CFG_CLK_EN ;
 int AML_USB_PHY_CFG_CLK_SEL_32K_ALT ;
 int AML_USB_PHY_CFG_CLK_SEL_MASK ;
 int AML_USB_PHY_CFG_CLK_SEL_XTAL ;
 int AML_USB_PHY_CFG_REG ;
 int AML_USB_PHY_CTRL_CLK_DETECTED ;
 int AML_USB_PHY_CTRL_FSEL_12M ;
 int AML_USB_PHY_CTRL_FSEL_24M ;
 int AML_USB_PHY_CTRL_FSEL_MASK ;
 int AML_USB_PHY_CTRL_POR ;
 int AML_USB_PHY_CTRL_REG ;
 int CSR_BARRIER (struct aml8726_usb_phy_softc*,int ) ;
 int CSR_READ_4 (struct aml8726_usb_phy_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_usb_phy_softc*,int ,int) ;
 int DELAY (int) ;
 int ENXIO ;
 scalar_t__ FALSE ;
 int GPIO_PIN_OUTPUT ;
 scalar_t__ GPIO_PIN_SET (int *,char,int ) ;
 scalar_t__ GPIO_PIN_SETFLAGS (int *,char,int ) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 void* OF_device_from_xref (char) ;
 int OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 int OF_getprop_alloc (int ,char*,void**) ;
 int OF_prop_free (char*) ;
 int PIN_OFF_FLAG (char) ;
 int PIN_ON_FLAG (char) ;
 scalar_t__ TRUE ;
 int aml8726_soc_hw_rev ;
 int aml8726_usb_phy_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_release_resources (int ,int ,int ) ;
 struct aml8726_usb_phy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int free (struct aml8726_usb_phy_gpio*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
aml8726_usb_phy_attach(device_t dev)
{
 struct aml8726_usb_phy_softc *sc = device_get_softc(dev);
 char *force_aca;
 int err;
 int npwr_en;
 pcell_t *prop;
 phandle_t node;
 ssize_t len;
 uint32_t div;
 uint32_t i;
 uint32_t value;

 sc->dev = dev;

 if (bus_alloc_resources(dev, aml8726_usb_phy_spec, sc->res)) {
  device_printf(dev, "can not allocate resources for device\n");
  return (ENXIO);
 }

 node = ofw_bus_get_node(dev);

 len = OF_getprop_alloc(node, "force-aca",
     (void **)&force_aca);

 sc->force_aca = FALSE;

 if (len > 0) {
  if (strncmp(force_aca, "true", len) == 0)
   sc->force_aca = TRUE;
 }

 OF_prop_free(force_aca);

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

 len = OF_getencprop_alloc_multi(node, "usb-hub-rst",
     3 * sizeof(pcell_t), (void **)&prop);
 if (len > 0) {
  sc->hub_rst.dev = OF_device_from_xref(prop[0]);
  sc->hub_rst.pin = prop[1];
  sc->hub_rst.pol = prop[2];

  if (len > 1 || sc->hub_rst.dev == ((void*)0))
   err = 1;
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





 value = CSR_READ_4(sc, AML_USB_PHY_CFG_REG);

 value &= ~(AML_USB_PHY_CFG_CLK_SEL_32K_ALT |
     AML_USB_PHY_CFG_CLK_DIV_MASK |
     AML_USB_PHY_CFG_CLK_SEL_MASK |
     AML_USB_PHY_CFG_CLK_EN);

 switch (aml8726_soc_hw_rev) {
 case 129:
 case 128:
  value |= AML_USB_PHY_CFG_CLK_SEL_32K_ALT;
  break;
 default:
  div = 2;
  value |= AML_USB_PHY_CFG_CLK_SEL_XTAL;
  value |= ((div - 1) << AML_USB_PHY_CFG_CLK_DIV_SHIFT) &
      AML_USB_PHY_CFG_CLK_DIV_MASK;
  value |= AML_USB_PHY_CFG_CLK_EN;
  break;
 }

 CSR_WRITE_4(sc, AML_USB_PHY_CFG_REG, value);

 CSR_BARRIER(sc, AML_USB_PHY_CFG_REG);





 value = CSR_READ_4(sc, AML_USB_PHY_CTRL_REG);

 value &= ~AML_USB_PHY_CTRL_FSEL_MASK;

 switch (aml8726_soc_hw_rev) {
 case 129:
 case 128:
  value |= AML_USB_PHY_CTRL_FSEL_24M;
  break;
 default:
  value |= AML_USB_PHY_CTRL_FSEL_12M;
  break;
 }

 value |= AML_USB_PHY_CTRL_POR;

 CSR_WRITE_4(sc, AML_USB_PHY_CTRL_REG, value);

 CSR_BARRIER(sc, AML_USB_PHY_CTRL_REG);

 DELAY(500);





 value &= ~AML_USB_PHY_CTRL_POR;

 CSR_WRITE_4(sc, AML_USB_PHY_CTRL_REG, value);

 CSR_BARRIER(sc, AML_USB_PHY_CTRL_REG);

 DELAY(1000);




 value = CSR_READ_4(sc, AML_USB_PHY_CTRL_REG);
 if ((value & AML_USB_PHY_CTRL_CLK_DETECTED) == 0)
  device_printf(dev, "PHY Clock not detected\n");





 if (sc->force_aca) {
  value = CSR_READ_4(sc, AML_USB_PHY_ADP_BC_REG);

  value |= AML_USB_PHY_ADP_BC_ACA_EN;

  CSR_WRITE_4(sc, AML_USB_PHY_ADP_BC_REG, value);

  CSR_BARRIER(sc, AML_USB_PHY_ADP_BC_REG);

  DELAY(50);

  value = CSR_READ_4(sc, AML_USB_PHY_ADP_BC_REG);

  if ((value & AML_USB_PHY_ADP_BC_ACA_FLOATING) != 0) {
   device_printf(dev,
       "force-aca requires newer silicon\n");
   goto fail;
  }
 }




 if (sc->hub_rst.dev != ((void*)0)) {
  err = 0;

  if (GPIO_PIN_SET(sc->hub_rst.dev, sc->hub_rst.pin,
      PIN_ON_FLAG(sc->hub_rst.pol)) != 0 ||
      GPIO_PIN_SETFLAGS(sc->hub_rst.dev, sc->hub_rst.pin,
      GPIO_PIN_OUTPUT) != 0)
   err = 1;

  DELAY(30);

  if (GPIO_PIN_SET(sc->hub_rst.dev, sc->hub_rst.pin,
      PIN_OFF_FLAG(sc->hub_rst.pol)) != 0)
   err = 1;

  DELAY(60000);

  if (err) {
   device_printf(dev,
       "could not use gpio to reset hub\n");
   goto fail;
  }
 }

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
